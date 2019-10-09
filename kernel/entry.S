%define KERNBASE   0x80000000
%define V2P_WO(va) (va - KERNBASE)
%define CR0_PG          0x80000000      ; Paging
%define CR0_WP          0x00010000      ; Write Protect
%define CR4_PSE         0x00000010      ; Page size extension
%define KSTACKSIZE      4096

section .text
extern main
extern entrypgdir

; default entry
global _start
_start:
  ret
  call V2P_WO(entry)
  ;ret ; allow boot main to error

global entry
entry:
  ; Turn on superpage
  mov eax, cr4
  or  eax, CR4_PSE
  mov cr4, eax

  ; Set page directory
  mov eax, V2P_WO(entrypgdir)
  mov cr3, eax

  ; turn on paging
  mov eax, cr0
  or  eax, (CR0_PG|CR0_WP)
  mov cr0, eax

  mov esp, (kernel_stack + KSTACKSIZE)

  xor ebp,ebp ; zero the ebp

  mov eax, main
  jmp eax

section .bss
  align KSTACKSIZE                        ; align at page
  global kernel_stack
  kernel_stack:                           ; label points to beginning of memory
    resb KSTACKSIZE                  ; reserve stack for the kernel
