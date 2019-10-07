
boot/bootmain.o:     file format elf32-i386


Disassembly of section .text:

00000000 <bootmain>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	e8 fc ff ff ff       	call   7 <bootmain+0x7>
   b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  12:	83 ec 04             	sub    $0x4,%esp
  15:	6a 00                	push   $0x0
  17:	6a 0f                	push   $0xf
  19:	ff 75 f4             	pushl  -0xc(%ebp)
  1c:	e8 fc ff ff ff       	call   1d <bootmain+0x1d>
  21:	83 c4 10             	add    $0x10,%esp
  24:	eb fe                	jmp    24 <bootmain+0x24>
