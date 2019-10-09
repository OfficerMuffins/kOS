#include "../lib/types.h"

#ifndef __DISK__
#define __DISK__

#define SECTSIZE 512

// ATA PIO
void readsect(void*, uint);
void waitdisk();
void readseg();

#endif
