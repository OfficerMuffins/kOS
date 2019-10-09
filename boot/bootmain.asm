
boot/bootmain.o:     file format elf32-i386


Disassembly of section .text:

00000000 <error>:
   0:	53                   	push   %ebx
   1:	83 ec 08             	sub    $0x8,%esp
   4:	8b 5c 24 10          	mov    0x10(%esp),%ebx
   8:	83 fb ff             	cmp    $0xffffffff,%ebx
   b:	74 07                	je     14 <error+0x14>
   d:	83 fb fe             	cmp    $0xfffffffe,%ebx
  10:	74 18                	je     2a <error+0x2a>
  12:	eb fe                	jmp    12 <error+0x12>
  14:	83 ec 04             	sub    $0x4,%esp
  17:	6a 00                	push   $0x0
  19:	6a 07                	push   $0x7
  1b:	68 00 00 00 00       	push   $0x0
  20:	e8 fc ff ff ff       	call   21 <error+0x21>
  25:	83 c4 10             	add    $0x10,%esp
  28:	eb e3                	jmp    d <error+0xd>
  2a:	83 ec 04             	sub    $0x4,%esp
  2d:	6a 00                	push   $0x0
  2f:	6a 07                	push   $0x7
  31:	68 00 00 00 00       	push   $0x0
  36:	e8 fc ff ff ff       	call   37 <error+0x37>
  3b:	83 c4 10             	add    $0x10,%esp
  3e:	eb d2                	jmp    12 <error+0x12>

00000040 <bootmain>:
  40:	57                   	push   %edi
  41:	56                   	push   %esi
  42:	53                   	push   %ebx
  43:	e8 fc ff ff ff       	call   44 <bootmain+0x4>
  48:	83 ec 04             	sub    $0x4,%esp
  4b:	6a 00                	push   $0x0
  4d:	6a 07                	push   $0x7
  4f:	68 16 00 00 00       	push   $0x16
  54:	e8 fc ff ff ff       	call   55 <bootmain+0x15>
  59:	83 c4 0c             	add    $0xc,%esp
  5c:	6a 00                	push   $0x0
  5e:	68 00 10 00 00       	push   $0x1000
  63:	68 00 00 01 00       	push   $0x10000
  68:	e8 fc ff ff ff       	call   69 <bootmain+0x29>
  6d:	83 c4 10             	add    $0x10,%esp
  70:	81 3d 00 00 01 00 7f 	cmpl   $0x464c457f,0x10000
  77:	45 4c 46 
  7a:	74 0a                	je     86 <bootmain+0x46>
  7c:	83 ec 0c             	sub    $0xc,%esp
  7f:	6a ff                	push   $0xffffffff
  81:	e8 fc ff ff ff       	call   82 <bootmain+0x42>
  86:	83 ec 04             	sub    $0x4,%esp
  89:	6a 00                	push   $0x0
  8b:	6a 07                	push   $0x7
  8d:	68 2b 00 00 00       	push   $0x2b
  92:	e8 fc ff ff ff       	call   93 <bootmain+0x53>
  97:	a1 1c 00 01 00       	mov    0x1001c,%eax
  9c:	8d 98 00 00 01 00    	lea    0x10000(%eax),%ebx
  a2:	0f b7 35 2c 00 01 00 	movzwl 0x1002c,%esi
  a9:	c1 e6 05             	shl    $0x5,%esi
  ac:	01 de                	add    %ebx,%esi
  ae:	83 c4 10             	add    $0x10,%esp
  b1:	eb 03                	jmp    b6 <bootmain+0x76>
  b3:	83 c3 20             	add    $0x20,%ebx
  b6:	39 f3                	cmp    %esi,%ebx
  b8:	73 2d                	jae    e7 <bootmain+0xa7>
  ba:	8b 7b 0c             	mov    0xc(%ebx),%edi
  bd:	83 ec 04             	sub    $0x4,%esp
  c0:	ff 73 04             	pushl  0x4(%ebx)
  c3:	ff 73 10             	pushl  0x10(%ebx)
  c6:	57                   	push   %edi
  c7:	e8 fc ff ff ff       	call   c8 <bootmain+0x88>
  cc:	8b 4b 14             	mov    0x14(%ebx),%ecx
  cf:	8b 43 10             	mov    0x10(%ebx),%eax
  d2:	83 c4 10             	add    $0x10,%esp
  d5:	39 c1                	cmp    %eax,%ecx
  d7:	76 da                	jbe    b3 <bootmain+0x73>
  d9:	29 c1                	sub    %eax,%ecx
  db:	01 c7                	add    %eax,%edi
  dd:	b8 00 00 00 00       	mov    $0x0,%eax
  e2:	fc                   	cld    
  e3:	f3 aa                	rep stos %al,%es:(%edi)
  e5:	eb cc                	jmp    b3 <bootmain+0x73>
  e7:	8b 1d 18 00 01 00    	mov    0x10018,%ebx
  ed:	83 ec 04             	sub    $0x4,%esp
  f0:	6a 00                	push   $0x0
  f2:	6a 07                	push   $0x7
  f4:	68 48 00 00 00       	push   $0x48
  f9:	e8 fc ff ff ff       	call   fa <bootmain+0xba>
  fe:	ff d3                	call   *%ebx
 100:	c7 04 24 fe ff ff ff 	movl   $0xfffffffe,(%esp)
 107:	e8 fc ff ff ff       	call   108 <bootmain+0xc8>
