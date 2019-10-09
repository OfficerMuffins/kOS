%define KERNBASE   0x80000000
%define V2P_WO(va) (va - KERNBASE)

extern main

# default entry
global _start
_start:
  call V2P_WO(entry)
  ret ; allow boot main to error

global entry
entry:
  mov eax, cr4
  or  eax, CR4_PSE
  mov cr4, eax

  mov eax, V2P(entrypgdir)
  mov cr3, eax

  ; Turn on page size extension for 4Mbyte pages
  movl    %cr4, %eax
  orl     $(CR4_PSE), %eax
  movl    %eax, %cr4

  ; Set page directory
  movl    $(V2P_WO(entrypgdir)), %eax
  movl    %eax, %cr3

  ; Turn on paging.
  movl    %cr0, %eax
  orl     $(CR0_PG|CR0_WP), %eax
  movl    %eax, %cr0

  ; Set up the stack pointer.
  movl $(stack + KSTACKSIZE), %esp

  ; Jump to main(), and switch to executing at
  ; high addresses. The indirect call is needed because
  ; the assembler produces a PC-relative instruction
  ; for a direct jump.
  mov $main, %eax
  jmp *%eax

.comm stack, KSTACKSIZE
  call main
