#include <cga.h>

static char *video_mem = (char *)0xb8000;
static size_t cursor_offset = 0;
static int cursor_status = 1;
static uint8_t text_palette = 0x07;
static uint8_t cursor_palette = 0x70;
static int escape = 0;
static int esc_value0 = 0;
static int esc_value1 = 0;
static int *esc_value = &esc_value0;
static int esc_default0 = 1;
static int esc_default1 = 1;
static int *esc_default = &esc_default0;
