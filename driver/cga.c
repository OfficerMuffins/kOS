#include "cga.h"
#include "../lib/x86.h"

static volatile uint16_t *cga_mem = (volatile uint16_t*) 0xb8000;
static uint8_t text_palette = 0x07;
static uint8_t cursor_offset = 0;
static uint8_t curr_row = 0;

void init_cga()
{
  clear_screen();
}

void
putc(char* c, uint8_t fg, uint8_t bg, int x, int y)
{
  uint16_t color = (bg << 4) | (fg & 0x0f);
  cga_mem[POS(x, y)] = *c | (color << 8);
}

void
clear_screen()
{
  for(volatile uint16_t i = 0; i < POS(80, 25); i++)
    cga_mem[i] = ' ' | text_palette;

  draw_cursor(0, 0);
}

void
draw_cursor()
{
  char *space = " ";
  putc(space, 0x0f, 0x0f, cursor_offset, curr_row);
}

void
print(char* c, uint8_t fg, uint8_t bg)
{
  while(*c++) {
    putc(c, fg, bg, cursor_offset++, curr_row);
    draw_cursor(curr_row, cursor_offset);
  }
}

void
enable_cursor(uint8_t cursor_start, uint8_t cursor_end)
{
  outb(0x3D4, 0x0A);
  outb(0x3D5, (inb(0x3D5) & 0xC0) | cursor_start);

  outb(0x3D4, 0x0B);
  outb(0x3D5, (inb(0x3D5) & 0xE0) | cursor_end);
}
