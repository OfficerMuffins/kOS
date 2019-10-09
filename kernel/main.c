#include "../driver/cga.h"

int
main()
{
  println("Starting kernel", 0x07, 0x00);
  for(;;);
}
