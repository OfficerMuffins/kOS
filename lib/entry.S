%define CR0_WP          0x00010000      // Write Protect
%define CR0_PG          0x80000000      // Paging
%define CR4_PSE         0x00000010      // Page size extension
%define KERNBASE        0x80000000      // First kernel virtual address
%define V2P_WO(va)      (va - KERNBASE)

extern main

; By convention, the _start symbol specifies the ELF entry point.
; Since we haven't set up virtual memory yet, our entry point is
; the physical address of 'entry'.
.globl _start
_start = V2P_WO(entry)

entry:
  ; turn on super pages
  mov eax, cr4
  or  eax, CR4_PSE

  ; mark the kernel directory as the currently running process
  mov V2P_WO(entrypgdir), eax
  mov cr3, eax

  ; set up paging
  mov eax, cr0
  or  eax, (CR0_PG|CR0_WP)
  mov cr0, eax

  ; start execution of the kernel
  mov eax, main
  jmp eax
