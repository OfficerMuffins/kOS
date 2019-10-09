#include "disk.h"
#include "../lib/x86.h"

// Read a single sector at offset into dst.
void
readsect(void *dst, uint offset)
{
  // Issue command.
  waitdisk();
  outb(0x1F2, 1);   // number of sectors to read

  // senidng LBA address to the ATA PIO
  outb(0x1F3, offset);
  outb(0x1F4, offset >> 8);
  outb(0x1F5, offset >> 16);

  // communication with the master drive
  outb(0x1F6, (offset >> 24) | 0xE0);
  outb(0x1F7, 0x20);  // cmd 0x20 - read sectors

  // Read data.
  waitdisk();
  insl(0x1F0, dst, SECTSIZE/4);
}

void
waitdisk(void)
{
  // polls disk for finish
  while((inb(0x1F7) & 0xC0) != 0x40)
    ;
}


// Read 'count' bytes at 'offset' from kernel into physical address 'pa'.
// Might copy more than asked.
void
readseg(uchar* pa, uint count, uint offset)
{
  uchar* epa;

  epa = pa + count;

  // Round down to sector boundary.
  pa -= offset % SECTSIZE;

  // Translate from bytes to sectors; kernel starts at sector 1.
  // The kernel is found in IDE sector 6
  offset = (offset / SECTSIZE) + 6;

  // read 1 page into memory
  for(; pa < epa; pa += SECTSIZE, offset++)
    readsect(pa, offset);
}
