%define KERNBASE   0x80000000
%define V2P_WO(va) (va - KERNBASE)
%define CR0_PG          0x80000000      ; Paging
%define CR0_WP          0x00010000      ; Write Protect
%define CR4_PSE         0x00000010      ; Page size extension
%define CR0_PE          0x00000001      ; Protection Enable
%define KSTACKSIZE      4096

;org 0x1000
section .text

; default entry
global _start
_start equ V2P_WO(entry)

global entry
entry:
  ; Turn on superpage
  mov eax, cr4
  or  eax, CR4_PSE
  mov cr4, eax

  ; Set page directory
  mov eax, V2P_WO(entrypgdir)
  mov cr3, eax

  ; FIXME:
  ; turn on paging
  mov eax, cr0
  or  eax, (CR0_PG|CR0_WP|CR0_PE)
  mov cr0, eax

  mov eax, relocated
  jmp relocated ; jmp to high address

relocated:
  xor ebp, ebp ; zero the ebp
  mov esp, (kernel_stack + KSTACKSIZE)
  call main

spin:
  jmp spin

section .data
  align KSTACKSIZE                        ; align at page
  kernel_stack:                           ; label points to beginning of memory
    resb KSTACKSIZE                  ; reserve stack for the kernel

extern entrypgdir
extern main
