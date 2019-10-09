
kernel/kernel.elf:     file format elf32-i386


Disassembly of section .text:

80100000 <putc>:
80100000:	53                   	push   %ebx
80100001:	8b 5c 24 18          	mov    0x18(%esp),%ebx
80100005:	0f b6 44 24 10       	movzbl 0x10(%esp),%eax
8010000a:	c1 e0 04             	shl    $0x4,%eax
8010000d:	89 c2                	mov    %eax,%edx
8010000f:	0f b7 44 24 0c       	movzwl 0xc(%esp),%eax
80100014:	83 e0 0f             	and    $0xf,%eax
80100017:	09 d0                	or     %edx,%eax
80100019:	8b 54 24 08          	mov    0x8(%esp),%edx
8010001d:	66 0f be 0a          	movsbw (%edx),%cx
80100021:	0f b7 c0             	movzwl %ax,%eax
80100024:	c1 e0 08             	shl    $0x8,%eax
80100027:	8d 1c 9b             	lea    (%ebx,%ebx,4),%ebx
8010002a:	c1 e3 04             	shl    $0x4,%ebx
8010002d:	89 da                	mov    %ebx,%edx
8010002f:	03 54 24 14          	add    0x14(%esp),%edx
80100033:	01 d2                	add    %edx,%edx
80100035:	09 c8                	or     %ecx,%eax
80100037:	66 89 82 00 80 0b 00 	mov    %ax,0xb8000(%edx)
8010003e:	5b                   	pop    %ebx
8010003f:	c3                   	ret    

80100040 <draw_cursor>:
80100040:	0f b6 05 01 10 10 80 	movzbl 0x80101001,%eax
80100047:	50                   	push   %eax
80100048:	0f b6 05 00 10 10 80 	movzbl 0x80101000,%eax
8010004f:	50                   	push   %eax
80100050:	6a 0f                	push   $0xf
80100052:	6a 0f                	push   $0xf
80100054:	68 5b 02 10 80       	push   $0x8010025b
80100059:	e8 a2 ff ff ff       	call   80100000 <putc>
8010005e:	83 c4 14             	add    $0x14,%esp
80100061:	c3                   	ret    

80100062 <clear_screen>:
80100062:	83 ec 10             	sub    $0x10,%esp
80100065:	66 c7 44 24 0e 00 00 	movw   $0x0,0xe(%esp)
8010006c:	0f b7 44 24 0e       	movzwl 0xe(%esp),%eax
80100071:	66 3d 1f 08          	cmp    $0x81f,%ax
80100075:	77 22                	ja     80100099 <clear_screen+0x37>
80100077:	0f b7 44 24 0e       	movzwl 0xe(%esp),%eax
8010007c:	0f b7 c0             	movzwl %ax,%eax
8010007f:	01 c0                	add    %eax,%eax
80100081:	66 c7 80 00 80 0b 00 	movw   $0x27,0xb8000(%eax)
80100088:	27 00 
8010008a:	0f b7 44 24 0e       	movzwl 0xe(%esp),%eax
8010008f:	83 c0 01             	add    $0x1,%eax
80100092:	66 89 44 24 0e       	mov    %ax,0xe(%esp)
80100097:	eb d3                	jmp    8010006c <clear_screen+0xa>
80100099:	6a 00                	push   $0x0
8010009b:	6a 00                	push   $0x0
8010009d:	e8 9e ff ff ff       	call   80100040 <draw_cursor>
801000a2:	83 c4 18             	add    $0x18,%esp
801000a5:	c3                   	ret    

801000a6 <init_cga>:
801000a6:	e8 b7 ff ff ff       	call   80100062 <clear_screen>
801000ab:	c3                   	ret    

801000ac <print>:
801000ac:	57                   	push   %edi
801000ad:	56                   	push   %esi
801000ae:	53                   	push   %ebx
801000af:	8b 44 24 10          	mov    0x10(%esp),%eax
801000b3:	0f b6 7c 24 14       	movzbl 0x14(%esp),%edi
801000b8:	0f b6 74 24 18       	movzbl 0x18(%esp),%esi
801000bd:	8d 58 01             	lea    0x1(%eax),%ebx
801000c0:	80 38 00             	cmpb   $0x0,(%eax)
801000c3:	74 4a                	je     8010010f <print+0x63>
801000c5:	0f b6 15 01 10 10 80 	movzbl 0x80101001,%edx
801000cc:	0f b6 05 00 10 10 80 	movzbl 0x80101000,%eax
801000d3:	8d 48 01             	lea    0x1(%eax),%ecx
801000d6:	88 0d 00 10 10 80    	mov    %cl,0x80101000
801000dc:	52                   	push   %edx
801000dd:	0f b6 c0             	movzbl %al,%eax
801000e0:	50                   	push   %eax
801000e1:	89 f0                	mov    %esi,%eax
801000e3:	0f b6 c0             	movzbl %al,%eax
801000e6:	50                   	push   %eax
801000e7:	89 f8                	mov    %edi,%eax
801000e9:	0f b6 c0             	movzbl %al,%eax
801000ec:	50                   	push   %eax
801000ed:	53                   	push   %ebx
801000ee:	e8 0d ff ff ff       	call   80100000 <putc>
801000f3:	0f b6 05 00 10 10 80 	movzbl 0x80101000,%eax
801000fa:	50                   	push   %eax
801000fb:	0f b6 05 01 10 10 80 	movzbl 0x80101001,%eax
80100102:	50                   	push   %eax
80100103:	e8 38 ff ff ff       	call   80100040 <draw_cursor>
80100108:	83 c4 1c             	add    $0x1c,%esp
8010010b:	89 d8                	mov    %ebx,%eax
8010010d:	eb ae                	jmp    801000bd <print+0x11>
8010010f:	5b                   	pop    %ebx
80100110:	5e                   	pop    %esi
80100111:	5f                   	pop    %edi
80100112:	c3                   	ret    

80100113 <println>:
80100113:	0f b6 44 24 0c       	movzbl 0xc(%esp),%eax
80100118:	50                   	push   %eax
80100119:	0f b6 44 24 0c       	movzbl 0xc(%esp),%eax
8010011e:	50                   	push   %eax
8010011f:	ff 74 24 0c          	pushl  0xc(%esp)
80100123:	e8 84 ff ff ff       	call   801000ac <print>
80100128:	80 05 01 10 10 80 01 	addb   $0x1,0x80101001
8010012f:	c6 05 00 10 10 80 00 	movb   $0x0,0x80101000
80100136:	83 c4 0c             	add    $0xc,%esp
80100139:	c3                   	ret    

8010013a <enable_cursor>:
8010013a:	53                   	push   %ebx
8010013b:	bb d4 03 00 00       	mov    $0x3d4,%ebx
80100140:	b8 0a 00 00 00       	mov    $0xa,%eax
80100145:	89 da                	mov    %ebx,%edx
80100147:	ee                   	out    %al,(%dx)
80100148:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
8010014d:	89 ca                	mov    %ecx,%edx
8010014f:	ec                   	in     (%dx),%al
80100150:	83 e0 c0             	and    $0xffffffc0,%eax
80100153:	0a 44 24 08          	or     0x8(%esp),%al
80100157:	ee                   	out    %al,(%dx)
80100158:	b8 0b 00 00 00       	mov    $0xb,%eax
8010015d:	89 da                	mov    %ebx,%edx
8010015f:	ee                   	out    %al,(%dx)
80100160:	89 ca                	mov    %ecx,%edx
80100162:	ec                   	in     (%dx),%al
80100163:	83 e0 e0             	and    $0xffffffe0,%eax
80100166:	0a 44 24 0c          	or     0xc(%esp),%al
8010016a:	ee                   	out    %al,(%dx)
8010016b:	5b                   	pop    %ebx
8010016c:	c3                   	ret    

8010016d <waitdisk>:
8010016d:	ba f7 01 00 00       	mov    $0x1f7,%edx
80100172:	ec                   	in     (%dx),%al
80100173:	83 e0 c0             	and    $0xffffffc0,%eax
80100176:	3c 40                	cmp    $0x40,%al
80100178:	75 f3                	jne    8010016d <waitdisk>
8010017a:	c3                   	ret    

8010017b <readsect>:
8010017b:	57                   	push   %edi
8010017c:	53                   	push   %ebx
8010017d:	8b 5c 24 10          	mov    0x10(%esp),%ebx
80100181:	e8 e7 ff ff ff       	call   8010016d <waitdisk>
80100186:	b8 01 00 00 00       	mov    $0x1,%eax
8010018b:	ba f2 01 00 00       	mov    $0x1f2,%edx
80100190:	ee                   	out    %al,(%dx)
80100191:	ba f3 01 00 00       	mov    $0x1f3,%edx
80100196:	89 d8                	mov    %ebx,%eax
80100198:	ee                   	out    %al,(%dx)
80100199:	89 d8                	mov    %ebx,%eax
8010019b:	c1 e8 08             	shr    $0x8,%eax
8010019e:	ba f4 01 00 00       	mov    $0x1f4,%edx
801001a3:	ee                   	out    %al,(%dx)
801001a4:	89 d8                	mov    %ebx,%eax
801001a6:	c1 e8 10             	shr    $0x10,%eax
801001a9:	ba f5 01 00 00       	mov    $0x1f5,%edx
801001ae:	ee                   	out    %al,(%dx)
801001af:	89 d8                	mov    %ebx,%eax
801001b1:	c1 e8 18             	shr    $0x18,%eax
801001b4:	83 c8 e0             	or     $0xffffffe0,%eax
801001b7:	ba f6 01 00 00       	mov    $0x1f6,%edx
801001bc:	ee                   	out    %al,(%dx)
801001bd:	b8 20 00 00 00       	mov    $0x20,%eax
801001c2:	ba f7 01 00 00       	mov    $0x1f7,%edx
801001c7:	ee                   	out    %al,(%dx)
801001c8:	e8 a0 ff ff ff       	call   8010016d <waitdisk>
801001cd:	8b 7c 24 0c          	mov    0xc(%esp),%edi
801001d1:	b9 80 00 00 00       	mov    $0x80,%ecx
801001d6:	ba f0 01 00 00       	mov    $0x1f0,%edx
801001db:	fc                   	cld    
801001dc:	f3 6d                	rep insl (%dx),%es:(%edi)
801001de:	5b                   	pop    %ebx
801001df:	5f                   	pop    %edi
801001e0:	c3                   	ret    

801001e1 <readseg>:
801001e1:	57                   	push   %edi
801001e2:	56                   	push   %esi
801001e3:	53                   	push   %ebx
801001e4:	8b 5c 24 10          	mov    0x10(%esp),%ebx
801001e8:	8b 74 24 18          	mov    0x18(%esp),%esi
801001ec:	89 df                	mov    %ebx,%edi
801001ee:	03 7c 24 14          	add    0x14(%esp),%edi
801001f2:	89 f0                	mov    %esi,%eax
801001f4:	25 ff 01 00 00       	and    $0x1ff,%eax
801001f9:	29 c3                	sub    %eax,%ebx
801001fb:	c1 ee 09             	shr    $0x9,%esi
801001fe:	83 c6 06             	add    $0x6,%esi
80100201:	39 fb                	cmp    %edi,%ebx
80100203:	73 15                	jae    8010021a <readseg+0x39>
80100205:	56                   	push   %esi
80100206:	53                   	push   %ebx
80100207:	e8 6f ff ff ff       	call   8010017b <readsect>
8010020c:	81 c3 00 02 00 00    	add    $0x200,%ebx
80100212:	83 c6 01             	add    $0x1,%esi
80100215:	83 c4 08             	add    $0x8,%esp
80100218:	eb e7                	jmp    80100201 <readseg+0x20>
8010021a:	5b                   	pop    %ebx
8010021b:	5e                   	pop    %esi
8010021c:	5f                   	pop    %edi
8010021d:	c3                   	ret    

8010021e <main>:
8010021e:	8d 4c 24 04          	lea    0x4(%esp),%ecx
80100222:	83 e4 f0             	and    $0xfffffff0,%esp
80100225:	ff 71 fc             	pushl  -0x4(%ecx)
80100228:	55                   	push   %ebp
80100229:	89 e5                	mov    %esp,%ebp
8010022b:	51                   	push   %ecx
8010022c:	83 ec 08             	sub    $0x8,%esp
8010022f:	6a 00                	push   $0x0
80100231:	6a 07                	push   $0x7
80100233:	68 5d 02 10 80       	push   $0x8010025d
80100238:	e8 d6 fe ff ff       	call   80100113 <println>
8010023d:	83 c4 10             	add    $0x10,%esp
80100240:	eb fe                	jmp    80100240 <main+0x22>
80100242:	66 90                	xchg   %ax,%ax
80100244:	66 90                	xchg   %ax,%ax
80100246:	66 90                	xchg   %ax,%ax
80100248:	66 90                	xchg   %ax,%ax
8010024a:	66 90                	xchg   %ax,%ax
8010024c:	66 90                	xchg   %ax,%ax
8010024e:	66 90                	xchg   %ax,%ax

80100250 <_start>:
80100250:	e8 01 00 00 80       	call   100256 <putc-0x7ffffdaa>
80100255:	c3                   	ret    

80100256 <entry>:
80100256:	e8 c3 ff ff ff       	call   8010021e <main>
