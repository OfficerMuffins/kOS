
boot/bootmain.o:     file format elf32-i386


Disassembly of section .text:

00000000 <bootmain>:
bootmain():
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	e8 fc ff ff ff       	call   7 <bootmain+0x7>
   b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  12:	83 ec 04             	sub    $0x4,%esp
  15:	68 00 10 00 00       	push   $0x1000
  1a:	68 00 10 00 00       	push   $0x1000
  1f:	ff 75 f0             	pushl  -0x10(%ebp)
  22:	e8 fc ff ff ff       	call   23 <bootmain+0x23>
  27:	83 c4 10             	add    $0x10,%esp
  2a:	8b 45 f0             	mov    -0x10(%ebp),%eax
  2d:	8b 00                	mov    (%eax),%eax
  2f:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
  34:	74 0d                	je     43 <bootmain+0x43>
  36:	83 ec 0c             	sub    $0xc,%esp
  39:	6a ff                	push   $0xffffffff
  3b:	e8 fc ff ff ff       	call   3c <bootmain+0x3c>
  40:	83 c4 10             	add    $0x10,%esp
  43:	83 ec 0c             	sub    $0xc,%esp
  46:	68 00 00 00 00       	push   $0x0
  4b:	e8 fc ff ff ff       	call   4c <bootmain+0x4c>
  50:	83 c4 10             	add    $0x10,%esp
  53:	8b 45 f0             	mov    -0x10(%ebp),%eax
  56:	8b 50 1c             	mov    0x1c(%eax),%edx
  59:	8b 45 f0             	mov    -0x10(%ebp),%eax
  5c:	01 d0                	add    %edx,%eax
  5e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  61:	8b 45 f0             	mov    -0x10(%ebp),%eax
  64:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
  68:	0f b7 c0             	movzwl %ax,%eax
  6b:	c1 e0 05             	shl    $0x5,%eax
  6e:	89 c2                	mov    %eax,%edx
  70:	8b 45 f4             	mov    -0xc(%ebp),%eax
  73:	01 d0                	add    %edx,%eax
  75:	89 45 ec             	mov    %eax,-0x14(%ebp)
  78:	83 ec 0c             	sub    $0xc,%esp
  7b:	68 1d 00 00 00       	push   $0x1d
  80:	e8 fc ff ff ff       	call   81 <bootmain+0x81>
  85:	83 c4 10             	add    $0x10,%esp
  88:	eb 65                	jmp    ef <bootmain+0xef>
  8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
  8d:	8b 40 0c             	mov    0xc(%eax),%eax
  90:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  93:	8b 45 f4             	mov    -0xc(%ebp),%eax
  96:	8b 50 04             	mov    0x4(%eax),%edx
  99:	8b 45 f4             	mov    -0xc(%ebp),%eax
  9c:	8b 40 10             	mov    0x10(%eax),%eax
  9f:	83 ec 04             	sub    $0x4,%esp
  a2:	52                   	push   %edx
  a3:	50                   	push   %eax
  a4:	ff 75 e4             	pushl  -0x1c(%ebp)
  a7:	e8 fc ff ff ff       	call   a8 <bootmain+0xa8>
  ac:	83 c4 10             	add    $0x10,%esp
  af:	8b 45 f4             	mov    -0xc(%ebp),%eax
  b2:	8b 50 14             	mov    0x14(%eax),%edx
  b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  b8:	8b 40 10             	mov    0x10(%eax),%eax
  bb:	39 c2                	cmp    %eax,%edx
  bd:	76 2c                	jbe    eb <bootmain+0xeb>
  bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
  c2:	8b 50 14             	mov    0x14(%eax),%edx
  c5:	8b 45 f4             	mov    -0xc(%ebp),%eax
  c8:	8b 40 10             	mov    0x10(%eax),%eax
  cb:	29 c2                	sub    %eax,%edx
  cd:	89 d0                	mov    %edx,%eax
  cf:	89 c1                	mov    %eax,%ecx
  d1:	8b 45 f4             	mov    -0xc(%ebp),%eax
  d4:	8b 50 10             	mov    0x10(%eax),%edx
  d7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
  da:	01 d0                	add    %edx,%eax
  dc:	83 ec 04             	sub    $0x4,%esp
  df:	51                   	push   %ecx
  e0:	6a 00                	push   $0x0
  e2:	50                   	push   %eax
  e3:	e8 06 00 00 00       	call   ee <bootmain+0xee>
  e8:	83 c4 10             	add    $0x10,%esp
  eb:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
  ef:	8b 45 f4             	mov    -0xc(%ebp),%eax
  f2:	3b 45 ec             	cmp    -0x14(%ebp),%eax
  f5:	72 93                	jb     8a <bootmain+0x8a>
  f7:	83 ec 0c             	sub    $0xc,%esp
  fa:	68 1d 00 00 00       	push   $0x1d
  ff:	e8 fc ff ff ff       	call   100 <bootmain+0x100>
 104:	83 c4 10             	add    $0x10,%esp
 107:	8b 45 f0             	mov    -0x10(%ebp),%eax
 10a:	8b 40 18             	mov    0x18(%eax),%eax
 10d:	89 45 e8             	mov    %eax,-0x18(%ebp)
 110:	83 ec 0c             	sub    $0xc,%esp
 113:	68 22 00 00 00       	push   $0x22
 118:	e8 fc ff ff ff       	call   119 <bootmain+0x119>
 11d:	83 c4 10             	add    $0x10,%esp
 120:	8b 45 e8             	mov    -0x18(%ebp),%eax
 123:	ff d0                	call   *%eax
 125:	83 ec 0c             	sub    $0xc,%esp
 128:	6a fe                	push   $0xfffffffe
 12a:	e8 fc ff ff ff       	call   12b <bootmain+0x12b>
 12f:	83 c4 10             	add    $0x10,%esp
 132:	90                   	nop
 133:	c9                   	leave  
 134:	c3                   	ret    

00000135 <error>:
error():
 135:	55                   	push   %ebp
 136:	89 e5                	mov    %esp,%ebp
 138:	83 ec 08             	sub    $0x8,%esp
 13b:	83 7d 08 ff          	cmpl   $0xffffffff,0x8(%ebp)
 13f:	75 10                	jne    151 <error+0x1c>
 141:	83 ec 0c             	sub    $0xc,%esp
 144:	68 34 00 00 00       	push   $0x34
 149:	e8 fc ff ff ff       	call   14a <error+0x15>
 14e:	83 c4 10             	add    $0x10,%esp
 151:	83 7d 08 fe          	cmpl   $0xfffffffe,0x8(%ebp)
 155:	75 10                	jne    167 <error+0x32>
 157:	83 ec 0c             	sub    $0xc,%esp
 15a:	68 5f 00 00 00       	push   $0x5f
 15f:	e8 fc ff ff ff       	call   160 <error+0x2b>
 164:	83 c4 10             	add    $0x10,%esp
 167:	eb fe                	jmp    167 <error+0x32>

Disassembly of section .entry:

00000000 <stosb-0xa>:
   0:	e8 fc ff ff ff       	call   1 <stosb-0x9>
   5:	e9 fc 7b 00 00       	jmp    7c06 <error+0x7ad1>

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
   0:	4c                   	dec    %esp
   1:	6f                   	outsl  %ds:(%esi),(%dx)
   2:	61                   	popa   
   3:	64 69 6e 67 20 74 68 	imul   $0x65687420,%fs:0x67(%esi),%ebp
   a:	65 
   b:	20 70 72             	and    %dh,0x72(%eax)
   e:	6f                   	outsl  %ds:(%esi),(%dx)
   f:	67 72 61             	addr16 jb 73 <.rodata+0x73>
  12:	6d                   	insl   (%dx),%es:(%edi)
  13:	20 73 65             	and    %dh,0x65(%ebx)
  16:	67 6d                	insl   (%dx),%es:(%di)
  18:	65 6e                	outsb  %gs:(%esi),(%dx)
  1a:	74 73                	je     8f <stosb+0x85>
  1c:	00 68 65             	add    %ch,0x65(%eax)
  1f:	72 65                	jb     86 <stosb+0x7c>
  21:	00 45 6e             	add    %al,0x6e(%ebp)
  24:	74 65                	je     8b <stosb+0x81>
  26:	72 69                	jb     91 <stosb+0x87>
  28:	6e                   	outsb  %ds:(%esi),(%dx)
  29:	67 20 6b 65          	and    %ch,0x65(%bp,%di)
  2d:	72 6e                	jb     9d <stosb+0x93>
  2f:	65 6c                	gs insb (%dx),%es:(%edi)
  31:	00 00                	add    %al,(%eax)
  33:	00 45 72             	add    %al,0x72(%ebp)
  36:	72 6f                	jb     a7 <stosb+0x9d>
  38:	72 3a                	jb     74 <.rodata+0x74>
  3a:	20 6d 61             	and    %ch,0x61(%ebp)
  3d:	67 69 63 20 6e 75 6d 	imul   $0x626d756e,0x20(%bp,%di),%esp
  44:	62 
  45:	65 72 20             	gs jb  68 <.rodata+0x68>
  48:	6e                   	outsb  %ds:(%esi),(%dx)
  49:	6f                   	outsl  %ds:(%esi),(%dx)
  4a:	74 20                	je     6c <.rodata+0x6c>
  4c:	64 65 74 65          	fs gs je b5 <stosb+0xab>
  50:	63 74 65 64          	arpl   %si,0x64(%ebp,%eiz,2)
  54:	20 69 6e             	and    %ch,0x6e(%ecx)
  57:	20 6b 65             	and    %ch,0x65(%ebx)
  5a:	72 6e                	jb     ca <stosb+0xc0>
  5c:	65 6c                	gs insb (%dx),%es:(%edi)
  5e:	00 45 72             	add    %al,0x72(%ebp)
  61:	72 6f                	jb     d2 <stosb+0xc8>
  63:	72 3a                	jb     9f <stosb+0x95>
  65:	20 65 6e             	and    %ah,0x6e(%ebp)
  68:	74 72                	je     dc <stosb+0xd2>
  6a:	79 20                	jns    8c <stosb+0x82>
  6c:	72 65                	jb     d3 <stosb+0xc9>
  6e:	74 75                	je     e5 <stosb+0xdb>
  70:	72 6e                	jb     e0 <stosb+0xd6>
  72:	65                   	gs
  73:	64                   	fs
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
  4b:	00 35 01 00 00 00    	add    %dh,0x1
  51:	41                   	inc    %ecx
  52:	0e                   	push   %cs
  53:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  59:	03 31                	add    (%ecx),%esi
  5b:	01 c5                	add    %eax,%ebp
  5d:	0c 04                	or     $0x4,%al
  5f:	04 18                	add    $0x18,%al
  61:	00 00                	add    %al,(%eax)
  63:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
  67:	00 35 01 00 00 34    	add    %dh,0x34000001
  6d:	00 00                	add    %al,(%eax)
  6f:	00 00                	add    %al,(%eax)
  71:	41                   	inc    %ecx
  72:	0e                   	push   %cs
  73:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
  79:	00 00                	add    %al,(%eax)
	...
Contents of the .eh_frame section:


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

00000040 0000001c 00000044 FDE cie=00000000 pc=00000000..00000135
  DW_CFA_advance_loc: 1 to 00000001
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to 00000003
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_advance_loc2: 305 to 00000134
  DW_CFA_restore: r5 (ebp)
  DW_CFA_def_cfa: r4 (esp) ofs 4

00000060 00000018 00000064 FDE cie=00000000 pc=00000135..00000169
  DW_CFA_advance_loc: 1 to 00000136
  DW_CFA_def_cfa_offset: 8
  DW_CFA_offset: r5 (ebp) at cfa-8
  DW_CFA_advance_loc: 2 to 00000138
  DW_CFA_def_cfa_register: r5 (ebp)
  DW_CFA_nop
  DW_CFA_nop
  DW_CFA_nop

