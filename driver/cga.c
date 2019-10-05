#include "cga.h"
#include "../lib/x86.h"

static volatile uint16_t *cga_mem = (volatile uint16_t*) 0xb8000;
static uint8_t text_palette = 0x07;
static int cursor_offset;
static uint8_t cursor_palette = 0x70;

void init_cga()
{
  outb(0x3d4, 14);
  outb(0x3d5, 0);
  outb(0x3d4, 15);
  outb(0x3d4, 0x50);
  clear_screen();
  putc('h', 0x0f, 0x0, 10, 10);
}

void putc(uint8_t c, uint8_t fg, uint8_t bg, int x, int y)
{
  uint16_t color = (bg << 4) | (fg & 0x0f);
  cga_mem[POS(x, y)] = c | (color << 8);
}

void
clear_screen()
{
  for(volatile uint16_t i = 0; i < POS(80, 25); i++)
    cga_mem[i] = ' ' | text_palette;

  cursor_offset = 0;
  draw_cursor();
}

void
draw_cursor()
{
  cga_mem[cursor_offset + 1] = cursor_palette;
}
