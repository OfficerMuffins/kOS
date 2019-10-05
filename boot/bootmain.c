// specify the entry
asm (
    ".section .entry\n\t"
    "xor %dh, %dh\n\t"
    "push %edx\n\t"
    "call bootmain\n\t"
);

#include "../driver/cga.h"

#define SEC_SIZE 512

void
bootmain()
{
  init_cga();
  for (;;);
}
