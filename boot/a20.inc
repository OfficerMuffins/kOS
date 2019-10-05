a20_check:
  push ax
  push bx
  push es
  push fs

  xor ax, ax
  mov es, ax            ; set segment es to 0
  not ax                ; 0xffff
  mov fs, ax            ; set segment fs to 0xffff

  mov ax, word [es:0x7dfe]
  cmp ax, word [fs:0x7e0e] ; if false, a20 is enabled.
                           ; this should be same address of boot signature if a20 is disabled

  pop fs
  pop es
  pop bx
  pop ax
  ret

a20_enable:
  push ax
  call a20_check

seta20.1:
  in al, 0x64
  test al, 0x2
  jnz seta20.1

  mov al, 0xd1
  out 0x64, al

seta20.2:
  in al, 0x64
  test al, 0x2
  jnz seta20.1

  mov al, 0xdf
  out 0x60, al

  call check2
  pop ax
  ret

check2: ; perform a second check by writing to boot signature
  push ax
  push bx
  push es
  push fs

  xor ax, ax
  mov es, ax            ; set segment es to 0
  not ax                ; 0xffff
  mov fs, ax            ; set segment fs to 0xffff

  mov word [es:0x7dfe], 0x1234 ; writes the word to boot sig
  cmp word [fs:0x7e0e], 0x1234

  je ErrEnableA20Msg ; equal, a20 still disabled

  mov si, DoneMsg
  call simple_print

  pop fs
  pop es
  pop bx
  pop ax
  ret

err_a20:
  mov si, ErrEnableA20Msg
  call simple_print
  jmp halt
