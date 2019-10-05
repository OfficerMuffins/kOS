# NASM flags
NASM_FLAGS = -fbin

# GCC flags and stuff
CC = gcc
CC_FLAGS = -m32 -c -nostdlib -nostdinc -fno-builtin -fno-stack-protector -nostartfiles -nodefaultlibs -Wall -Wextra -Werror -Og

# QEMU configs and stuff
CPUS = 1
QEMU = qemu-system-i386
QEMU_FLAGS := -drive file=bootloader,index=0,media=disk,format=raw -smp $(CPUS) -m 512

# LD stuff
LD = ld
LDFLAGS = \
	-m elf_i386 \
	-nostdlib \
	-T boot/bootlinker.ld

# object files
BOOT_OBJ = bootmain.o
DRIVER_OBJ = cga.o
BOOT_OBJ := $(addprefix boot/,$(BOOT_OBJ))
DRIVER_OBJ := $(addprefix driver/,$(DRIVER_OBJ))

C_FILES := $(shell find ./ -type f -name '*.c')
OBJ := $(C_FILES:.c=.o)

all:
	make boot/bootloader

boot/bootloader: $(OBJ)
	cd boot && nasm $(NASM_FLAGS) loader.S -o bootasm.bin
	$(LD) $(LDFLAGS) $(BOOT_OBJ) -o bootloader

qemu-win:
	$(QEMU) $(QEMU_FLAGS)

%.o: %.c
	$(CC) $(CC_FLAGS) -c $< -o $@


.PHONY: clean all
clean:
	find . -name "*.o" -type f -delete
	rm boot/bootasm.bin boot/bootloader

debug:
	echo $(QEMU)
