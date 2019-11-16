#include "driver/cga.h"
#include "lib/mmu.h"
#include "lib/memlayout.h"
#include "lib/types.h"
#include "lib/x86.h"

extern pde_t entrypgdir[NPDENTRIES];

__attribute__((__aligned__(PGSIZE)))
pte_t entrypgtable[NPTENTRIES];

static void play_sound(uint32_t);
static void nosound();
void beep();

int
main()
{
  println("we entered the kernel!");
  // frees 1024 pages to be used as initial memory
  //kinit1();
  while(1) {
    play_sound(4110);
  }
}

__attribute__((__aligned__(PGSIZE)))
pde_t entrypgdir[NPDENTRIES] =
// first page must be identitied map to itself in high memory
{
  // Map VA's [0, 4MB) to PA's [0, 4MB)
  [0] =  PTE_P | PTE_W | PTE_PS,
  // Map VA's [KERNBASE, KERNBASE+4MB) to PA's [0, 4MB)
  [KERNBASE>>PDXSHIFT] =  PTE_P | PTE_W | PTE_PS
};

//Play sound using built in speaker
static void play_sound(uint32_t nFrequence) {
  uint32_t Div;
  uint8_t tmp;

  //Set the PIT to the desired frequency
  Div = 1193180 / nFrequence;
  outb(0x43, 0xb6);
  outb(0x42, (uint8_t) (Div) );
  outb(0x42, (uint8_t) (Div >> 8));

  //And play the sound using the PC speaker
  tmp = inb(0x61);
  if (tmp != (tmp | 3)) {
    outb(0x61, tmp | 3);
  }
}

//make it shutup
static void nosound() {
  uint8_t tmp = inb(0x61) & 0xFC;

  outb(0x61, tmp);
}

//Make a beep
void beep() {
  play_sound(1000);
  //timer_wait(10);
  for(int i = 0; i < 10000; i++);
  nosound();
  //set_PIT_2(old_frequency);
}
