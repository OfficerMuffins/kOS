org 0x7c00
bits 16

loader:                         ; the loader label (defined as entry point in linker script)
  xor ax, ax
  mov ax, ds
  mov ax, es
  mov ax, ss

  mov si, LoadingMsg
  call simple_print

  mov si, FinishedLoading
  call simple_print

  mov si, Stage2Msg
  call simple_print

  mov ah, 0x41 ; check if BIOS extensions is enabled
  mov bx, 0x55aa
  mov dl, 0x80
  int 0x13
  jc err_no_lba

  mov ax, 1
  mov bx, 0x7e00
  mov cx, 1
  call read_sectors
  jmp 0x7e00

err_no_lba:
  mov si, ErrReadDiskMsg
  call simple_print

halt:
  hlt
  jmp halt

; strings
LoadingMsg db 0x0D, 0x0A, '<kOS>', 0x0D, 0x0A, 0x0A, 0x00
FinishedLoading db 0x0D,0x0A, 'Finished stage 1', 0x0D, 0x0A, 0x0A, 0x00
Stage2Msg db 'stage1: Loading stage2...', 0x00
ErrReadDiskMsg db 0x0D, 0x0A, 'Error reading disk, system halted.', 0x00
ErrEnableA20Msg db 0x0D, 0x0A, 'Error enabling a20, system halted.', 0x00
DoneMsg db '  DONE', 0x0D, 0x0A, 0x00
EnablingA20 db 0x0D, 0x0A, 'Enabling the A20...', 0x00

; includes
%include 'print.inc'
%include 'disk.inc'

times 510-($-$$) db 0
dw 0xaa55
; first 512 bytes end

stage2:

  mov ax, 2 ; load in bootmain
  mov ebx, 0x8000
  mov cx, 14
  call read_sectors
  jc err_reading_disk

  mov si, DoneMsg
  call simple_print

; enable a20 line
  mov si, EnablingA20
  call simple_print
  call a20_enable ; check if enabled first

  lgdt [GDT]    ; load the gdt
  cli         ; no longer running under BIOS, prevent BIOS interrputs

  mov eax, cr0
  or eax, 00000001b ; turn on paging
  mov cr0, eax

  jmp 0x18:.pmode ; complete the jump to protected mode

bits 32
.pmode:
  mov ax, 0x20 ; mark segments as data
  mov ds, ax
  mov es, ax
  mov fs, ax
  mov gs, ax
  mov ss, ax

  jmp 0x8000 ; jump to bootmain

bits 16
%include 'a20.inc'
%include 'gdt.inc'

err_reading_disk:
  mov si, ErrReadDiskMsg
  call simple_print

times 1024-($-$$) db 0
