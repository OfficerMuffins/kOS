#pragma once
#ifndef __DISK__
#define __DISK__

#include "lib/types.h"

#define SECTSIZE 512
#define LBA(pa) (pa / SECTSIZE)
#define SECROUNDUP(sz)  ((((uint)sz)+SECTSIZE-1) & ~(SECTSIZE-1))
#define SECROUNDDOWN(a) ((((uint)a)) & ~(SECTSIZE-1))

// location of elf file in disk
#define ELF_START 0x1000

// ATA PIO
void readsect(void*, uint);
void waitdisk();
void readseg();

#endif
