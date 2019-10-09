#include "../driver/cga.h"
#include "../lib/mmu.h"
#include "../lib/memlayout.h"
#include "../lib/types.h"

extern pde_t entrypgdir[NPDENTRIES];
pte_t entrypgtable[NPTENTRIES];

int
main()
{
  println("Starting kernel", 0x07, 0x00);
  for(;;);
}

// The entry.S page directory maps the first 4MB of physical memory
// starting at virtual address KERNBASE (that is, it maps virtual
// addresses [KERNBASE, KERNBASE+4MB) to physical addresses [0, 4MB)).
// We choose 4MB because that's how much we can map with one page
// table and it's enough to get us through early boot.  We also map
// virtual addresses [0, 4MB) to physical addresses [0, 4MB); this
// region is critical for a few instructions in entry.S and then we
// never use it again.
//
// Page directories (and page tables), must start on a page boundary,
// hence the "__aligned__" attribute.  Also, because of restrictions
// related to linking and static initializers, we use "x + PTE_P"
// here, rather than the more standard "x | PTE_P".  Everywhere else
// you should use "|" to combine flags.
__attribute__((__aligned__(PGSIZE)))
pde_t entrypgdir[NPDENTRIES] =
{
  // Map VA's [0, 4MB) to PA's [0, 4MB)
  [0]
    = ((uintptr_t)entrypgtable - KERNBASE) + PTE_P,
  // Map VA's [KERNBASE, KERNBASE+4MB) to PA's [0, 4MB)
  [KERNBASE>>PDXSHIFT]
    = ((uintptr_t)entrypgtable - KERNBASE) + PTE_P + PTE_W
};
