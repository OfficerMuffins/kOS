
boot/bootmain.o:     file format elf32-i386


Disassembly of section .text:

00000000 <bootmain>:
bootmain():
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	e8 fc ff ff ff       	call   7 <bootmain+0x7>
   b:	83 ec 0c             	sub    $0xc,%esp
   e:	68 00 00 00 00       	push   $0x0
  13:	e8 fc ff ff ff       	call   14 <bootmain+0x14>
  18:	83 c4 10             	add    $0x10,%esp
  1b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  22:	83 ec 04             	sub    $0x4,%esp
  25:	6a 00                	push   $0x0
  27:	68 00 10 00 00       	push   $0x1000
  2c:	ff 75 f0             	pushl  -0x10(%ebp)
  2f:	e8 fc ff ff ff       	call   30 <bootmain+0x30>
  34:	83 c4 10             	add    $0x10,%esp
  37:	8b 45 f0             	mov    -0x10(%ebp),%eax
  3a:	8b 00                	mov    (%eax),%eax
  3c:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  41:	74 0d                	je     50 <bootmain+0x50>
  43:	83 ec 0c             	sub    $0xc,%esp
  46:	6a ff                	push   $0xffffffff
  48:	e8 fc ff ff ff       	call   49 <bootmain+0x49>
  4d:	83 c4 10             	add    $0x10,%esp
  50:	83 ec 0c             	sub    $0xc,%esp
  53:	68 12 00 00 00       	push   $0x12
  58:	e8 fc ff ff ff       	call   59 <bootmain+0x59>
  5d:	83 c4 10             	add    $0x10,%esp
  60:	8b 45 f0             	mov    -0x10(%ebp),%eax
  63:	8b 50 1c             	mov    0x1c(%eax),%edx
  66:	8b 45 f0             	mov    -0x10(%ebp),%eax
  69:	01 d0                	add    %edx,%eax
  6b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  6e:	8b 45 f0             	mov    -0x10(%ebp),%eax
  71:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  75:	0f b7 c0             	movzwl %ax,%eax
  78:	c1 e0 05             	shl    $0x5,%eax
  7b:	89 c2                	mov    %eax,%edx
  7d:	8b 45 f4             	mov    -0xc(%ebp),%eax
  80:	01 d0                	add    %edx,%eax
  82:	89 45 ec             	mov    %eax,-0x14(%ebp)
  85:	eb 65                	jmp    ec <bootmain+0xec>
  87:	8b 45 f4             	mov    -0xc(%ebp),%eax
  8a:	8b 40 0c             	mov    0xc(%eax),%eax
  8d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  90:	8b 45 f4             	mov    -0xc(%ebp),%eax
  93:	8b 50 04             	mov    0x4(%eax),%edx
  96:	8b 45 f4             	mov    -0xc(%ebp),%eax
  99:	8b 40 10             	mov    0x10(%eax),%eax
  9c:	83 ec 04             	sub    $0x4,%esp
  9f:	52                   	push   %edx
  a0:	50                   	push   %eax
  a1:	ff 75 e4             	pushl  -0x1c(%ebp)
  a4:	e8 fc ff ff ff       	call   a5 <bootmain+0xa5>
  a9:	83 c4 10             	add    $0x10,%esp
  ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
  af:	8b 50 14             	mov    0x14(%eax),%edx
  b2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  b5:	8b 40 10             	mov    0x10(%eax),%eax
  b8:	39 c2                	cmp    %eax,%edx
  ba:	76 2c                	jbe    e8 <bootmain+0xe8>
  bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
  bf:	8b 50 14             	mov    0x14(%eax),%edx
  c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
  c5:	8b 40 10             	mov    0x10(%eax),%eax
  c8:	29 c2                	sub    %eax,%edx
  ca:	89 d0                	mov    %edx,%eax
  cc:	89 c1                	mov    %eax,%ecx
  ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
  d1:	8b 50 10             	mov    0x10(%eax),%edx
  d4:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  d7:	01 d0                	add    %edx,%eax
  d9:	83 ec 04             	sub    $0x4,%esp
  dc:	51                   	push   %ecx
  dd:	6a 00                	push   $0x0
  df:	50                   	push   %eax
  e0:	e8 06 00 00 00       	call   eb <bootmain+0xeb>
  e5:	83 c4 10             	add    $0x10,%esp
  e8:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
  ef:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  f2:	72 93                	jb     87 <bootmain+0x87>
  f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
  f7:	8b 40 18             	mov    0x18(%eax),%eax
  fa:	89 45 e8             	mov    %eax,-0x18(%ebp)
  fd:	83 ec 0c             	sub    $0xc,%esp
 100:	68 2f 00 00 00       	push   $0x2f
 105:	e8 fc ff ff ff       	call   106 <bootmain+0x106>
 10a:	83 c4 10             	add    $0x10,%esp
 10d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 110:	ff d0                	call   *%eax
 112:	83 ec 0c             	sub    $0xc,%esp
 115:	6a fe                	push   $0xfffffffe
 117:	e8 fc ff ff ff       	call   118 <bootmain+0x118>
 11c:	83 c4 10             	add    $0x10,%esp
 11f:	90                   	nop
 120:	c9                   	leave  
 121:	c3                   	ret    

00000122 <error>:
error():
 122:	55                   	push   %ebp
 123:	89 e5                	mov    %esp,%ebp
 125:	83 ec 08             	sub    $0x8,%esp
 128:	83 7d 08 ff          	cmpl   $0xffffffff,0x8(%ebp)
 12c:	75 10                	jne    13e <error+0x1c>
 12e:	83 ec 0c             	sub    $0xc,%esp
 131:	68 40 00 00 00       	push   $0x40
 136:	e8 fc ff ff ff       	call   137 <error+0x15>
 13b:	83 c4 10             	add    $0x10,%esp
 13e:	83 7d 08 fe          	cmpl   $0xfffffffe,0x8(%ebp)
 142:	75 10                	jne    154 <error+0x32>
 144:	83 ec 0c             	sub    $0xc,%esp
 147:	68 6b 00 00 00       	push   $0x6b
 14c:	e8 fc ff ff ff       	call   14d <error+0x2b>
 151:	83 c4 10             	add    $0x10,%esp
 154:	eb fe                	jmp    154 <error+0x32>

Disassembly of section .entry:

00000000 <stosb-0xa>:
   0:	e8 fc ff ff ff       	call   1 <stosb-0x9>
   5:	e9 fc 7b 00 00       	jmp    7c06 <error+0x7ae4>

0000000a <stosb>:
stosb():
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	53                   	push   %ebx
   f:	8b 4d 08             	mov    0x8(%ebp),%ecx
  12:	8b 55 10             	mov    0x10(%ebp),%edx
  15:	8b 45 0c             	mov    0xc(%ebp),%eax
  18:	89 cb                	mov    %ecx,%ebx
  1a:	89 df                	mov    %ebx,%edi
  1c:	89 d1                	mov    %edx,%ecx
  1e:	fc                   	cld    
  1f:	f3 aa                	rep stos %al,%es:(%edi)
  21:	89 ca                	mov    %ecx,%edx
  23:	89 fb                	mov    %edi,%ebx
  25:	89 5d 08             	mov    %ebx,0x8(%ebp)
  28:	89 55 10             	mov    %edx,0x10(%ebp)
  2b:	90                   	nop
  2c:	5b                   	pop    %ebx
  2d:	5f                   	pop    %edi
  2e:	5d                   	pop    %ebp
  2f:	c3                   	ret    

Disassembly of section .rodata:

00000000 <.rodata>:
   0:	45                   	inc    %ebp
   1:	6e                   	outsb  %ds:(%esi),(%dx)
   2:	74 65                	je     69 <.rodata+0x69>
   4:	72 69                	jb     6f <.rodata+0x6f>
   6:	6e                   	outsb  %ds:(%esi),(%dx)
   7:	67 20 62 6f          	and    %ah,0x6f(%bp,%si)
   b:	6f                   	outsl  %ds:(%esi),(%dx)
   c:	74 6d                	je     7b <.rodata+0x7b>
   e:	61                   	popa   
   f:	69 6e 00 4c 6f 61 64 	imul   $0x64616f4c,0x0(%esi),%ebp
  16:	69 6e 67 20 74 68 65 	imul   $0x65687420,0x67(%esi),%ebp
  1d:	20 70 72             	and    %dh,0x72(%eax)
  20:	6f                   	outsl  %ds:(%esi),(%dx)
  21:	67 72 61             	addr16 jb 85 <stosb+0x7b>
  24:	6d                   	insl   (%dx),%es:(%edi)
  25:	20 73 65             	and    %dh,0x65(%ebx)
  28:	67 6d                	insl   (%dx),%es:(%di)
  2a:	65 6e                	outsb  %gs:(%esi),(%dx)
  2c:	74 73                	je     a1 <stosb+0x97>
  2e:	00 45 6e             	add    %al,0x6e(%ebp)
  31:	74 65                	je     98 <stosb+0x8e>
  33:	72 69                	jb     9e <stosb+0x94>
  35:	6e                   	outsb  %ds:(%esi),(%dx)
  36:	67 20 6b 65          	and    %ch,0x65(%bp,%di)
  3a:	72 6e                	jb     aa <stosb+0xa0>
  3c:	65 6c                	gs insb (%dx),%es:(%edi)
  3e:	00 00                	add    %al,(%eax)
  40:	45                   	inc    %ebp
  41:	72 72                	jb     b5 <stosb+0xab>
  43:	6f                   	outsl  %ds:(%esi),(%dx)
  44:	72 3a                	jb     80 <.rodata+0x80>
  46:	20 6d 61             	and    %ch,0x61(%ebp)
  49:	67 69 63 20 6e 75 6d 	imul   $0x626d756e,0x20(%bp,%di),%esp
  50:	62 
  51:	65 72 20             	gs jb  74 <.rodata+0x74>
  54:	6e                   	outsb  %ds:(%esi),(%dx)
  55:	6f                   	outsl  %ds:(%esi),(%dx)
  56:	74 20                	je     78 <.rodata+0x78>
  58:	64 65 74 65          	fs gs je c1 <stosb+0xb7>
  5c:	63 74 65 64          	arpl   %si,0x64(%ebp,%eiz,2)
  60:	20 69 6e             	and    %ch,0x6e(%ecx)
  63:	20 6b 65             	and    %ch,0x65(%ebx)
  66:	72 6e                	jb     d6 <stosb+0xcc>
  68:	65 6c                	gs insb (%dx),%es:(%edi)
  6a:	00 45 72             	add    %al,0x72(%ebp)
  6d:	72 6f                	jb     de <stosb+0xd4>
  6f:	72 3a                	jb     ab <stosb+0xa1>
  71:	20 65 6e             	and    %ah,0x6e(%ebp)
  74:	74 72                	je     e8 <stosb+0xde>
  76:	79 20                	jns    98 <stosb+0x8e>
  78:	72 65                	jb     df <stosb+0xd5>
  7a:	74 75                	je     f1 <stosb+0xe7>
  7c:	72 6e                	jb     ec <stosb+0xe2>
  7e:	65                   	gs
  7f:	64                   	fs
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	00 47 43             	add    %al,0x43(%edi)
   3:	43                   	inc    %ebx
   4:	3a 20                	cmp    (%eax),%ah
   6:	28 47 4e             	sub    %al,0x4e(%edi)
   9:	55                   	push   %ebp
   a:	29 20                	sub    %esp,(%eax)
   c:	39 2e                	cmp    %ebp,(%esi)
   e:	32 2e                	xor    (%esi),%ch
  10:	30 00                	xor    %al,(%eax)

Disassembly of section .eh_frame:

00000000 <.eh_frame>:
   0:	14 00                	adc    $0x0,%al
   2:	00 00                	add    %al,(%eax)
   4:	00 00                	add    %al,(%eax)
   6:	00 00                	add    %al,(%eax)
   8:	01 7a 52             	add    %edi,0x52(%edx)
   b:	00 01                	add    %al,(%ecx)
   d:	7c 08                	jl     17 <.eh_frame+0x17>
   f:	01 1b                	add    %ebx,(%ebx)
  11:	0c 04                	or     $0x4,%al
  13:	04 88                	add    $0x88,%al
  15:	01 00                	add    %eax,(%eax)
  17:	00 24 00             	add    %ah,(%eax,%eax,1)
  1a:	00 00                	add    %al,(%eax)
  1c:	1c 00                	sbb    $0x0,%al
  1e:	00 00                	add    %al,(%eax)
  20:	0a 00                	or     (%eax),%al
  22:	00 00                	add    %al,(%eax)
  24:	26 00 00             	add    %al,%es:(%eax)
  27:	00 00                	add    %al,(%eax)
  29:	41                   	inc    %ecx
  2a:	0e                   	push   %cs
  2b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  31:	42                   	inc    %edx
  32:	87 03                	xchg   %eax,(%ebx)
  34:	83 04 5e c3          	addl   $0xffffffc3,(%esi,%ebx,2)
  38:	41                   	inc    %ecx
  39:	c7 41 c5 0c 04 04 00 	movl   $0x4040c,-0x3b(%ecx)
  40:	1c 00                	sbb    $0x0,%al
  42:	00 00                	add    %al,(%eax)
  44:	44                   	inc    %esp
  45:	00 00                	add    %al,(%eax)
  47:	00 00                	add    %al,(%eax)
  49:	00 00                	add    %al,(%eax)
  4b:	00 22                	add    %ah,(%edx)
  4d:	01 00                	add    %eax,(%eax)
  4f:	00 00                	add    %al,(%eax)
  51:	41                   	inc    %ecx
  52:	0e                   	push   %cs
  53:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  59:	03 1e                	add    (%esi),%ebx
  5b:	01 c5                	add    %eax,%ebp
  5d:	0c 04                	or     $0x4,%al
  5f:	04 18                	add    $0x18,%al
  61:	00 00                	add    %al,(%eax)
  63:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
  67:	00 22                	add    %ah,(%edx)
  69:	01 00                	add    %eax,(%eax)
  6b:	00 34 00             	add    %dh,(%eax,%eax,1)
  6e:	00 00                	add    %al,(%eax)
  70:	00 41 0e             	add    %al,0xe(%ecx)
  73:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  79:	00 00                	add    %al,(%eax)
	...
Contents of the .eh_frame section (loaded from boot/bootmain.o):


00000000 00000014 00000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: 1
  Data alignment factor: -4
  Return address column: 8
  Augmentation data:     1b
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_offset: r8 (eip) at cfa-4
  DW_CFA_nop
  DW_CFA_nop

00000018 00000024 0000001c FDE cie=00000000 pc=0000000a..00000030
  DW_CFA_advance_loc: 1 to 0000000b
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to 0000000d
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc: 2 to 0000000f
  DW_CFA_offset: r7 (edi) at cfa-12
  DW_CFA_offset: r3 (ebx) at cfa-16
  DW_CFA_advance_loc: 30 to 0000002d
  DW_CFA_restore: r3 (ebx)
  DW_CFA_advance_loc: 1 to 0000002e
  DW_CFA_restore: r7 (edi)
  DW_CFA_advance_loc: 1 to 0000002f
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4
  DW_CFA_nop

00000040 0000001c 00000044 FDE cie=00000000 pc=00000000..00000122
  DW_CFA_advance_loc: 1 to 00000001
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to 00000003
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 286 to 00000121
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000060 00000018 00000064 FDE cie=00000000 pc=00000122..00000156
  DW_CFA_advance_loc: 1 to 00000123
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to 00000125
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

