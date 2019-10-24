#include "disk.h"
#include "lib/x86.h"
#include "driver/cga.h"
#include "lib/lib.h"

void
readsect(void *dst, uint lba)
/**
 * @brief: Read a single sector at lba into dst
 *
 * Directly communicates with the IDE via PATA. The LBA address is the index of the sector.
 */
{
  waitdisk();
  // communication with the master(0xE0) drive
  // outb(0x1F6, 0xE0 | (slavebit << 4) | ((LBA >> 24) & 0x0F))
  outb(0x1F6, (lba >> 24) | 0xE0);
  // send sector count, we are only reading 1 sector
  outb(0x1F2, 1);
  // sending the rest of the LBA address to the ATA PIO
  outb(0x1F3, lba);
  outb(0x1F4, lba >> 8);
  outb(0x1F5, lba >> 16);
  // cmd 0x20 - read sectors
  outb(0x1F7, 0x20);
  // Reading data...
  waitdisk();
  // transfer 256 words, from port 0x1F0
  insw(0x1F0, dst, 256);
}

void
waitdisk(void)
// polls disk for finish
{
  while((inb(0x1F7) & 0xC0) != 0x40)
    ;
}

void
readseg(uchar* pa, uint count, uint offset)
/**
 * @brief: read count bytes from offset to pa
 *
 * Copies the elf file given by ELF_START in from disk to memory.
 * Will copy more than asked.
 *
 * @param[in]: physical destination
 * @param[in]: # of bytes
 * @param[in]: offset from the start of the elf file in bytes
 *
 * @bug: repeatedly reading the first sector?
 */
{
  uchar* epa;
  // ending address, rounded up
  epa = pa + count;
  epa += SECROUNDUP(epa);
  // create an LBA from a physical address on the block
  uint lba = LBA(SECROUNDDOWN(offset + ELF_START));
  // reads one sector at a time up into epa
  for(; pa < epa; pa += SECTSIZE, lba++)
    readsect(pa, lba);
}
