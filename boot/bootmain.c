// specify the entry
asm (
    ".section .entry\n\t"
    "call bootmain\n\t"
    "jmp 0x7c00\n\t" // retry booting TODO: delete?
);

#include "../driver/cga.h"
#include "../driver/disk.h"
#include "../lib/x86.h"
#include "../lib/elf.h"
#include "../lib/ulib.h"

void error(int errcode);

void
bootmain()
{
  init_cga();

  struct elfhdr *elf;
  struct proghdr *ph, *eph;
  void (*entry)(void);
  uchar* pa;

  // write elf file as first page
  elf = (struct elfhdr*)0x10000;

  // At this point, first 5 sectors are from 2 stage bootloader and 3 sectors
  //  from bootmain
  // Read 1st page off disk
  println("Reading the segments", 0x07, 0x00);
  readseg((uchar*)elf, 4096, 0);

  // Is this an ELF executable?
  if(elf->magic != ELF_MAGIC)
    error(-1);

  println("Loading the program segments", 0x07, 0x00);

  // Load each program segment (ignores ph flags).
  ph = (struct proghdr*)((uchar*)elf + elf->phoff);
  eph = ph + elf->phnum; // 0x28003?
  asm("movl %0,%%eax\n\t"
      "movl %1,%%ebx\n\t"
      :
      : "m" (elf->phnum), "m" (elf->phnum)
      );
  while(1);
  char num_ph[10];
  itoa((uint) elf->phnum + 1, num_ph, 10);
  println(num_ph, 0x07, 0x0);

  while(1);
  for(; ph < eph; ph++){
    pa = (uchar*)ph->paddr;
    readseg(pa, ph->filesz, ph->off);
    if(ph->memsz > ph->filesz)
      stosb(pa + ph->filesz, 0, ph->memsz - ph->filesz);
  }

  // Call the entry point from the ELF header.
  // Does not return!
  entry = (void(*)())(elf->entry);
  println("Entering kernel", 0x07, 0x00);

  entry();

  error(-2);
}

// used for debugging purposes
void
error(int errcode)
{
  if (errcode == -1)
    println("Error: magic number not detected in kernel", 0x07, 0x00);
  if (errcode == -2)
    println("Error: entry returned", 0x07, 0x00);

  // block
  while(1);
}
