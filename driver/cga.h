#include "../lib/types.h"

#ifndef __VGA_TEXTMODE_H__
#define __VGA_TEXTMODE_H__

#define POS(x, y)     (y * 80 + x)
#define COLOR(fg, bg) ((bg << 4 | (fg & 0x0f)) << 8)

void init_cga();
void putc(char* c, uint8_t fg, uint8_t bg, int x, int y);
void clear_screen();
void draw_cursor();
void enable_cursor(uint8_t cursor_start, uint8_t cursor_end);
void print(char* c, uint8_t fg, uint8_t bg);

#endif
