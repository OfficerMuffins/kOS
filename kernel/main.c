#include "driver/cga.h"
#include "lib/mmu.h"
#include "lib/memlayout.h"
#include "lib/types.h"

extern pde_t entrypgdir[NPDENTRIES];

__attribute__((__aligned__(PGSIZE)))
pte_t entrypgtable[NPTENTRIES];

int
main()
{
  println("Starting kernel");
  while(1);
}

__attribute__((__aligned__(PGSIZE)))
pde_t entrypgdir[NPDENTRIES] =
{
  // Map VA's [0, 4MB) to PA's [0, 4MB)
  [0] =  PTE_P | PTE_W | PTE_PS,
  // Map VA's [KERNBASE, KERNBASE+4MB) to PA's [0, 4MB)
  [KERNBASE>>PDXSHIFT] =  PTE_P | PTE_W | PTE_PS
};
