// specify the entry
asm (
    ".section .entry\n\t"
    "call bootmain\n\t"
    "jmp 0x7c00\n\t" // retry booting TODO: delete?
);

#include "driver/cga.h"
#include "driver/disk.h"
#include "lib/x86.h"
#include "lib/elf.h"
#include "lib/mmu.h"

void error(int errcode);

void
bootmain()
{
  init_cga();
  struct elfhdr *elf;
  struct proghdr *ph, *end_ph;
  void (*entry)(void);
  uchar* pa;
  // read first page off of the elf file into 2nd page of physical RAM
  // used to obtain header information
  elf = (struct elfhdr*)0;
  // for the first read, offset is ELF_START because that's where
  //    the file is in disk
  readseg((uchar*)elf, 4096, ELF_START);
  // check the magic number
  if(elf->magic != ELF_MAGIC)
    error(-1);
  println("Loading the program segments");
  // Load each program segment (ignores ph flags).
  ph = (struct proghdr*)((uchar*)elf + elf->phoff);
  end_ph = ph + elf->phnum;
  /*
  uint esp = 0xf000;
  esp++;
  // FIXME
  asm volatile("mov %0, %1" :: "r"(elf), "r"(esp));
  asm volatile("mov %0, %1" :: "r"(ph), "r"(esp));
  */
//  itoa((uint) elf->phnum + 1, num_ph, 10);
  println("here");
  // load each program segment into memory, but really
  // the only segments necessary are first 2 (data and text)
  for(; ph < end_ph; ph++){
    pa = (uchar*)ph->paddr;
    readseg(pa, ph->filesz, ph->off);
    if(ph->memsz > ph->filesz)
      stosb(pa + ph->filesz, 0, ph->memsz - ph->filesz);
  }
  println("here");
  // Call the entry point from the ELF header.
  // Does not return!
  entry = (void(*)())(elf->entry);
  println("Entering kernel");
  entry();
  error(-2);
}

// used for debugging purposes
void
error(int errcode)
{
  if (errcode == -1)
    println("Error: magic number not detected in kernel");
  if (errcode == -2)
    println("Error: entry returned");
  // block
  while(1);
}
