# NASM flags
NASM_FLAGS = -fbin

# GCC flags and stuff
CC = gcc
CC_FLAGS = -m32 -c -nostdlib -nostdinc -fno-builtin -fno-pie -fno-stack-protector -nostartfiles -nodefaultlibs -Wall -Wextra -Werror -O0

# QEMU configs and stuff
CPUS = 1
QEMU = qemu-system-i386
QEMU_FLAGS := -drive file=kOS.img,index=0,media=disk,format=raw -smp $(CPUS) -m 512

# LD stuff
LD = ld
LDFLAGS = \
	-m elf_i386 \
	-nostdlib \
	-Tboot/bootlinker.ld\
	-Ttext 0x8000\
	-e bootmain

OBJDUMP = objdump
OBJCOPY = objcopy

# object files
BOOT_OBJ = bootmain.o
DRIVER_OBJ = cga.o
BOOT_OBJ := $(addprefix boot/,$(BOOT_OBJ))
DRIVER_OBJ := $(addprefix driver/,$(DRIVER_OBJ))

C_FILES := $(shell find ./ -type f -name '*.c')
OBJ := $(C_FILES:.c=.o)

all:
	make kOS.img

boot/bootblock: $(OBJ)
	cd boot && nasm $(NASM_FLAGS) loader.S -o loader.bin
	$(LD) $(LDFLAGS) $(BOOT_OBJ) $(DRIVER_OBJ) -o boot/bootmain.bin
	cat boot/loader.bin boot/bootmain.bin > $@
	$(OBJDUMP) -S boot/bootmain.o > boot/bootmain.asm

kOS.img: boot/bootblock
	dd if=/dev/zero of=kOS.img count=10000
	dd if=$< of=kOS.img conv=notrunc

qemu-win:
	$(QEMU) $(QEMU_FLAGS)

%.o: %.c
	$(CC) $(CC_FLAGS) -c $< -o $@


.PHONY: clean all
clean:
	find . -name "*.o" -type f -delete
	find . -name "*.elf" -type f -delete
	rm boot/bootasm.bin boot/bootblock kOS.img
