# project root directory
ROOT = $(shell pwd)

# NASM flags
NASM_FLAGS =

# GCC flags and stuff
CC = gcc
CC_FLAGS = -m32 -c -nostdlib -nostdinc -fno-builtin -fno-pie -fno-stack-protector -nostartfiles -nodefaultlibs -Wall -Wextra -O0
CC_INCLUDES := -I$(ROOT)

# QEMU configs and stuff
CPUS = 1
QEMU = qemu-system-i386
QEMU_FLAGS := -drive file=kOS.img,index=0,media=disk,format=raw -soundhw pcspk -audiodev id=alsa,driver=alsa -smp $(CPUS) -m 512
QEMU_OPTS = -monitor stdio

# LD stuff
LD = ld
LDFLAGS = \
	-m elf_i386 \
	-nostdlib \

OBJDUMP = objdump -mi386
OBJCOPY = objcopy

# object files
BOOT_OBJ = bootmain.o
DRIVER_OBJ = cga.o\
	     disk.o
KERNEL_OBJ = main.o\
	     entry.o
LIB_OBJ = lib.o
BOOT_OBJ := $(addprefix boot/,$(BOOT_OBJ))
DRIVER_OBJ := $(addprefix driver/,$(DRIVER_OBJ))
KERNEL_OBJ := $(addprefix kernel/,$(KERNEL_OBJ))
LIB_OBJ := $(addprefix lib/,$(LIB_OBJ))

C_FILES := $(shell find ./ -type f -name '*.c')
OBJ := $(C_FILES:.c=.o)

.PHONY: clean all ctags kOS.img
all:
	make kOS.img

boot/bootblock.bin:
	cd boot && nasm $(NASM_FLAGS) -fbin loader.S -o loader.bin
	$(LD) $(LDFLAGS) -T boot/bootlinker.ld -Ttext 0x8000 -e bootmain -o boot/bootmain.bin $(LIB_OBJ) $(BOOT_OBJ) $(DRIVER_OBJ)
	cat boot/loader.bin boot/bootmain.bin > $@
	$(OBJDUMP) -SlgD boot/bootmain.o > boot/bootmain.asm
	$(OBJDUMP) -b binary --adjust-vma=0x7c00 -D boot/bootblock.bin > boot/bootblock.asm

kernel/kernel.elf:
	cd kernel && nasm $(NASM_FLAGS) -f elf entry.S -o entry.o
	$(LD) $(LDFLAGS) -T kernel/kernel.ld -o kernel/kernel.elf $(DRIVER_OBJ) $(KERNEL_OBJ) $(LIB_OBJ)
	$(OBJDUMP) -SlgD kernel/kernel.elf > kernel/kernel.asm

kOS.img: clean $(OBJ) boot/bootblock.bin kernel/kernel.elf
	dd if=/dev/zero of=kOS.img count=10000
	dd if=boot/bootblock.bin of=kOS.img conv=notrunc
	dd if=kernel/kernel.elf of=kOS.img seek=8 conv=notrunc

compile: $(OBJ)

qemu: kOS.img
	$(QEMU) $(QEMU_FLAGS)

bochs: kOS.img
	bochs

%.o: %.c
	$(CC) $(CC_INCLUDES) $(CC_FLAGS) -c $< -o $@

clean:
	find . \( -name "*.elf" \
	  -o -name "*.o" \
	  -o -name "*.bin" \
	  -o -name "*.elf" \
	  -o -name "*.img" \
	  -o -name "*.asm" \) \
	  -type f -delete;
