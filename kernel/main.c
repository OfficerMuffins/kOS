#include "driver/cga.h"
#include "lib/mmu.h"
#include "lib/memlayout.h"
#include "lib/types.h"

extern pde_t entrypgdir[NPDENTRIES];
pte_t entrypgtable[NPTENTRIES];

int
main()
{
  println("Starting kernel");
  while(1);
}

char *a = "91231";
__attribute__((__aligned__(PGSIZE)))
pde_t entrypgdir[NPDENTRIES] =
{
  // Map VA's [0, 4MB) to PA's [0, 4MB)
  [0] = ((uintptr_t)entrypgtable - KERNBASE) + PTE_P,
  [2] = 0x9e12,
  // Map VA's [KERNBASE, KERNBASE+4MB) to PA's [0, 4MB)
  [KERNBASE>>PDXSHIFT] = ((uintptr_t)entrypgtable - KERNBASE) + PTE_P + PTE_W
};
