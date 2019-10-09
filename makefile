# NASM flags
NASM_FLAGS =

# GCC flags and stuff
CC = gcc
CC_FLAGS = -m32 -c -nostdlib -nostdinc -fno-builtin -fno-pie -fno-stack-protector -nostartfiles -nodefaultlibs -Wall -Wextra -Werror -Og

# QEMU configs and stuff
CPUS = 1
QEMU = qemu-system-i386
QEMU_FLAGS := -drive file=kOS.img,index=0,media=disk,format=raw -smp $(CPUS) -m 512

# LD stuff
LD = ld
LDFLAGS = \
	-m elf_i386 \
	-nostdlib \

OBJDUMP = objdump
OBJCOPY = objcopy

# object files
BOOT_OBJ = bootmain.o
DRIVER_OBJ = cga.o\
	     disk.o
KERNEL_OBJ = main.o\
	     entry.o
BOOT_OBJ := $(addprefix boot/,$(BOOT_OBJ))
DRIVER_OBJ := $(addprefix driver/,$(DRIVER_OBJ))
KERNEL_OBJ := $(addprefix kernel/,$(KERNEL_OBJ))


C_FILES := $(shell find ./ -type f -name '*.c')
OBJ := $(C_FILES:.c=.o)

all:
	make kOS.img

boot/bootblock:
	cd boot && nasm $(NASM_FLAGS) -fbin loader.S -o loader.bin
	$(LD) $(LDFLAGS) -Tboot/bootlinker.ld -Ttext 0x8000 -e bootmain $(BOOT_OBJ) $(DRIVER_OBJ) -o boot/bootmain.bin
	cat boot/loader.bin boot/bootmain.bin > $@
	$(OBJDUMP) -S boot/bootmain.o > boot/bootmain.asm

kernel/kernel.elf:
	cd kernel && nasm $(NASM_FLAGS) -f elf entry.S -o entry.o
	$(LD) $(LDFLAGS) -Tkernel/kernel.ld $(DRIVER_OBJ) $(KERNEL_OBJ) -o kernel/kernel.elf
	$(OBJDUMP) -S kernel/kernel.elf > kernel/kernel.asm


kOS.img: $(OBJ) boot/bootblock kernel/kernel.elf
	dd if=/dev/zero of=kOS.img count=10000
	dd if=boot/bootblock of=kOS.img conv=notrunc
	dd if=kernel/kernel.elf of=kOS.img seek=6 conv=notrunc

compile: $(OBJ)

qemu-win:
	$(QEMU) $(QEMU_FLAGS)

ctags:
	ctags -R %cd% # for windows

%.o: %.c
	$(CC) $(CC_FLAGS) -c $< -o $@


.PHONY: clean all ctags
clean:
	find . \( -name "*.elf" -o -name "*.o" -o -name "*.bin" \) -type f -delete
	rm boot/bootasm.bin boot/bootblock kOS.img boot/bootmain
