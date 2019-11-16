
kernel/kernel.elf:     file format elf32-i386


Disassembly of section .text:

80100000 <inb>:
inb():
80100000:	55                   	push   %ebp
80100001:	89 e5                	mov    %esp,%ebp
80100003:	83 ec 14             	sub    $0x14,%esp
80100006:	8b 45 08             	mov    0x8(%ebp),%eax
80100009:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
8010000d:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
80100011:	89 c2                	mov    %eax,%edx
80100013:	ec                   	in     (%dx),%al
80100014:	88 45 ff             	mov    %al,-0x1(%ebp)
80100017:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
8010001b:	c9                   	leave  
8010001c:	c3                   	ret    

8010001d <outb>:
outb():
8010001d:	55                   	push   %ebp
8010001e:	89 e5                	mov    %esp,%ebp
80100020:	83 ec 08             	sub    $0x8,%esp
80100023:	8b 45 08             	mov    0x8(%ebp),%eax
80100026:	8b 55 0c             	mov    0xc(%ebp),%edx
80100029:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
8010002d:	89 d0                	mov    %edx,%eax
8010002f:	88 45 f8             	mov    %al,-0x8(%ebp)
80100032:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
80100036:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
8010003a:	ee                   	out    %al,(%dx)
8010003b:	90                   	nop
8010003c:	c9                   	leave  
8010003d:	c3                   	ret    

8010003e <init_cga>:
init_cga():
8010003e:	55                   	push   %ebp
8010003f:	89 e5                	mov    %esp,%ebp
80100041:	83 ec 08             	sub    $0x8,%esp
80100044:	e8 78 00 00 00       	call   801000c1 <clear_screen>
80100049:	90                   	nop
8010004a:	c9                   	leave  
8010004b:	c3                   	ret    

8010004c <putc>:
putc():
8010004c:	55                   	push   %ebp
8010004d:	89 e5                	mov    %esp,%ebp
8010004f:	53                   	push   %ebx
80100050:	83 ec 10             	sub    $0x10,%esp
80100053:	8b 45 10             	mov    0x10(%ebp),%eax
80100056:	c1 e0 04             	shl    $0x4,%eax
80100059:	89 c2                	mov    %eax,%edx
8010005b:	8b 45 0c             	mov    0xc(%ebp),%eax
8010005e:	83 e0 0f             	and    $0xf,%eax
80100061:	09 d0                	or     %edx,%eax
80100063:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
80100067:	8b 45 08             	mov    0x8(%ebp),%eax
8010006a:	0f b6 00             	movzbl (%eax),%eax
8010006d:	66 98                	cbtw   
8010006f:	0f b7 55 fa          	movzwl -0x6(%ebp),%edx
80100073:	c1 e2 08             	shl    $0x8,%edx
80100076:	09 d0                	or     %edx,%eax
80100078:	89 c3                	mov    %eax,%ebx
8010007a:	8b 0d 00 10 10 80    	mov    0x80101000,%ecx
80100080:	0f b6 05 02 40 10 80 	movzbl 0x80104002,%eax
80100087:	0f b6 d0             	movzbl %al,%edx
8010008a:	89 d0                	mov    %edx,%eax
8010008c:	c1 e0 02             	shl    $0x2,%eax
8010008f:	01 d0                	add    %edx,%eax
80100091:	c1 e0 04             	shl    $0x4,%eax
80100094:	89 c2                	mov    %eax,%edx
80100096:	0f b6 05 01 40 10 80 	movzbl 0x80104001,%eax
8010009d:	0f b6 c0             	movzbl %al,%eax
801000a0:	01 d0                	add    %edx,%eax
801000a2:	01 c0                	add    %eax,%eax
801000a4:	01 c8                	add    %ecx,%eax
801000a6:	89 da                	mov    %ebx,%edx
801000a8:	66 89 10             	mov    %dx,(%eax)
801000ab:	0f b6 05 01 40 10 80 	movzbl 0x80104001,%eax
801000b2:	83 c0 01             	add    $0x1,%eax
801000b5:	a2 01 40 10 80       	mov    %al,0x80104001
801000ba:	90                   	nop
801000bb:	83 c4 10             	add    $0x10,%esp
801000be:	5b                   	pop    %ebx
801000bf:	5d                   	pop    %ebp
801000c0:	c3                   	ret    

801000c1 <clear_screen>:
clear_screen():
801000c1:	55                   	push   %ebp
801000c2:	89 e5                	mov    %esp,%ebp
801000c4:	83 ec 18             	sub    $0x18,%esp
801000c7:	66 c7 45 f6 00 00    	movw   $0x0,-0xa(%ebp)
801000cd:	eb 2d                	jmp    801000fc <clear_screen+0x3b>
801000cf:	0f b6 05 04 10 10 80 	movzbl 0x80101004,%eax
801000d6:	83 c8 20             	or     $0x20,%eax
801000d9:	89 c1                	mov    %eax,%ecx
801000db:	a1 00 10 10 80       	mov    0x80101000,%eax
801000e0:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
801000e4:	0f b7 d2             	movzwl %dx,%edx
801000e7:	01 d2                	add    %edx,%edx
801000e9:	01 c2                	add    %eax,%edx
801000eb:	0f b6 c1             	movzbl %cl,%eax
801000ee:	66 89 02             	mov    %ax,(%edx)
801000f1:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
801000f5:	83 c0 01             	add    $0x1,%eax
801000f8:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
801000fc:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
80100100:	66 3d 1f 08          	cmp    $0x81f,%ax
80100104:	76 c9                	jbe    801000cf <clear_screen+0xe>
80100106:	83 ec 08             	sub    $0x8,%esp
80100109:	6a 00                	push   $0x0
8010010b:	6a 00                	push   $0x0
8010010d:	e8 06 00 00 00       	call   80100118 <draw_cursor>
80100112:	83 c4 10             	add    $0x10,%esp
80100115:	90                   	nop
80100116:	c9                   	leave  
80100117:	c3                   	ret    

80100118 <draw_cursor>:
draw_cursor():
80100118:	55                   	push   %ebp
80100119:	89 e5                	mov    %esp,%ebp
8010011b:	6a 0f                	push   $0xf
8010011d:	6a 0f                	push   $0xf
8010011f:	68 ab 06 10 80       	push   $0x801006ab
80100124:	e8 23 ff ff ff       	call   8010004c <putc>
80100129:	83 c4 0c             	add    $0xc,%esp
8010012c:	90                   	nop
8010012d:	c9                   	leave  
8010012e:	c3                   	ret    

8010012f <print>:
print():
8010012f:	55                   	push   %ebp
80100130:	89 e5                	mov    %esp,%ebp
80100132:	53                   	push   %ebx
80100133:	83 ec 10             	sub    $0x10,%esp
80100136:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
8010013d:	eb 2b                	jmp    8010016a <print+0x3b>
8010013f:	0f b6 05 00 40 10 80 	movzbl 0x80104000,%eax
80100146:	0f b6 d0             	movzbl %al,%edx
80100149:	0f b6 05 04 10 10 80 	movzbl 0x80101004,%eax
80100150:	0f b6 c0             	movzbl %al,%eax
80100153:	8b 5d f8             	mov    -0x8(%ebp),%ebx
80100156:	8b 4d 08             	mov    0x8(%ebp),%ecx
80100159:	01 d9                	add    %ebx,%ecx
8010015b:	52                   	push   %edx
8010015c:	50                   	push   %eax
8010015d:	51                   	push   %ecx
8010015e:	e8 e9 fe ff ff       	call   8010004c <putc>
80100163:	83 c4 0c             	add    $0xc,%esp
80100166:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
8010016a:	8b 55 f8             	mov    -0x8(%ebp),%edx
8010016d:	8b 45 08             	mov    0x8(%ebp),%eax
80100170:	01 d0                	add    %edx,%eax
80100172:	0f b6 00             	movzbl (%eax),%eax
80100175:	84 c0                	test   %al,%al
80100177:	75 c6                	jne    8010013f <print+0x10>
80100179:	90                   	nop
8010017a:	90                   	nop
8010017b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010017e:	c9                   	leave  
8010017f:	c3                   	ret    

80100180 <println>:
println():
80100180:	55                   	push   %ebp
80100181:	89 e5                	mov    %esp,%ebp
80100183:	ff 75 08             	pushl  0x8(%ebp)
80100186:	e8 a4 ff ff ff       	call   8010012f <print>
8010018b:	83 c4 04             	add    $0x4,%esp
8010018e:	0f b6 05 02 40 10 80 	movzbl 0x80104002,%eax
80100195:	83 c0 01             	add    $0x1,%eax
80100198:	a2 02 40 10 80       	mov    %al,0x80104002
8010019d:	c6 05 01 40 10 80 00 	movb   $0x0,0x80104001
801001a4:	90                   	nop
801001a5:	c9                   	leave  
801001a6:	c3                   	ret    

801001a7 <enable_cursor>:
enable_cursor():
801001a7:	55                   	push   %ebp
801001a8:	89 e5                	mov    %esp,%ebp
801001aa:	83 ec 08             	sub    $0x8,%esp
801001ad:	8b 55 08             	mov    0x8(%ebp),%edx
801001b0:	8b 45 0c             	mov    0xc(%ebp),%eax
801001b3:	88 55 fc             	mov    %dl,-0x4(%ebp)
801001b6:	88 45 f8             	mov    %al,-0x8(%ebp)
801001b9:	6a 0a                	push   $0xa
801001bb:	68 d4 03 00 00       	push   $0x3d4
801001c0:	e8 58 fe ff ff       	call   8010001d <outb>
801001c5:	83 c4 08             	add    $0x8,%esp
801001c8:	68 d5 03 00 00       	push   $0x3d5
801001cd:	e8 2e fe ff ff       	call   80100000 <inb>
801001d2:	83 c4 04             	add    $0x4,%esp
801001d5:	83 e0 c0             	and    $0xffffffc0,%eax
801001d8:	89 c2                	mov    %eax,%edx
801001da:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
801001de:	09 d0                	or     %edx,%eax
801001e0:	0f b6 c0             	movzbl %al,%eax
801001e3:	50                   	push   %eax
801001e4:	68 d5 03 00 00       	push   $0x3d5
801001e9:	e8 2f fe ff ff       	call   8010001d <outb>
801001ee:	83 c4 08             	add    $0x8,%esp
801001f1:	6a 0b                	push   $0xb
801001f3:	68 d4 03 00 00       	push   $0x3d4
801001f8:	e8 20 fe ff ff       	call   8010001d <outb>
801001fd:	83 c4 08             	add    $0x8,%esp
80100200:	68 d5 03 00 00       	push   $0x3d5
80100205:	e8 f6 fd ff ff       	call   80100000 <inb>
8010020a:	83 c4 04             	add    $0x4,%esp
8010020d:	83 e0 e0             	and    $0xffffffe0,%eax
80100210:	89 c2                	mov    %eax,%edx
80100212:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
80100216:	09 d0                	or     %edx,%eax
80100218:	0f b6 c0             	movzbl %al,%eax
8010021b:	50                   	push   %eax
8010021c:	68 d5 03 00 00       	push   $0x3d5
80100221:	e8 f7 fd ff ff       	call   8010001d <outb>
80100226:	83 c4 08             	add    $0x8,%esp
80100229:	90                   	nop
8010022a:	c9                   	leave  
8010022b:	c3                   	ret    

8010022c <inb>:
inb():
8010022c:	55                   	push   %ebp
8010022d:	89 e5                	mov    %esp,%ebp
8010022f:	83 ec 14             	sub    $0x14,%esp
80100232:	8b 45 08             	mov    0x8(%ebp),%eax
80100235:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
80100239:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
8010023d:	89 c2                	mov    %eax,%edx
8010023f:	ec                   	in     (%dx),%al
80100240:	88 45 ff             	mov    %al,-0x1(%ebp)
80100243:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
80100247:	c9                   	leave  
80100248:	c3                   	ret    

80100249 <insw>:
insw():
80100249:	55                   	push   %ebp
8010024a:	89 e5                	mov    %esp,%ebp
8010024c:	57                   	push   %edi
8010024d:	53                   	push   %ebx
8010024e:	8b 55 08             	mov    0x8(%ebp),%edx
80100251:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80100254:	8b 45 10             	mov    0x10(%ebp),%eax
80100257:	89 cb                	mov    %ecx,%ebx
80100259:	89 df                	mov    %ebx,%edi
8010025b:	89 c1                	mov    %eax,%ecx
8010025d:	fc                   	cld    
8010025e:	66 f3 6d             	rep insw (%dx),%es:(%edi)
80100261:	89 c8                	mov    %ecx,%eax
80100263:	89 fb                	mov    %edi,%ebx
80100265:	89 5d 0c             	mov    %ebx,0xc(%ebp)
80100268:	89 45 10             	mov    %eax,0x10(%ebp)
8010026b:	90                   	nop
8010026c:	5b                   	pop    %ebx
8010026d:	5f                   	pop    %edi
8010026e:	5d                   	pop    %ebp
8010026f:	c3                   	ret    

80100270 <outb>:
outb():
80100270:	55                   	push   %ebp
80100271:	89 e5                	mov    %esp,%ebp
80100273:	83 ec 08             	sub    $0x8,%esp
80100276:	8b 45 08             	mov    0x8(%ebp),%eax
80100279:	8b 55 0c             	mov    0xc(%ebp),%edx
8010027c:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80100280:	89 d0                	mov    %edx,%eax
80100282:	88 45 f8             	mov    %al,-0x8(%ebp)
80100285:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
80100289:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
8010028d:	ee                   	out    %al,(%dx)
8010028e:	90                   	nop
8010028f:	c9                   	leave  
80100290:	c3                   	ret    

80100291 <readsect>:
readsect():
80100291:	55                   	push   %ebp
80100292:	89 e5                	mov    %esp,%ebp
80100294:	83 ec 08             	sub    $0x8,%esp
80100297:	e8 ac 00 00 00       	call   80100348 <waitdisk>
8010029c:	8b 45 0c             	mov    0xc(%ebp),%eax
8010029f:	c1 e8 18             	shr    $0x18,%eax
801002a2:	83 c8 e0             	or     $0xffffffe0,%eax
801002a5:	0f b6 c0             	movzbl %al,%eax
801002a8:	83 ec 08             	sub    $0x8,%esp
801002ab:	50                   	push   %eax
801002ac:	68 f6 01 00 00       	push   $0x1f6
801002b1:	e8 ba ff ff ff       	call   80100270 <outb>
801002b6:	83 c4 10             	add    $0x10,%esp
801002b9:	83 ec 08             	sub    $0x8,%esp
801002bc:	6a 01                	push   $0x1
801002be:	68 f2 01 00 00       	push   $0x1f2
801002c3:	e8 a8 ff ff ff       	call   80100270 <outb>
801002c8:	83 c4 10             	add    $0x10,%esp
801002cb:	8b 45 0c             	mov    0xc(%ebp),%eax
801002ce:	0f b6 c0             	movzbl %al,%eax
801002d1:	83 ec 08             	sub    $0x8,%esp
801002d4:	50                   	push   %eax
801002d5:	68 f3 01 00 00       	push   $0x1f3
801002da:	e8 91 ff ff ff       	call   80100270 <outb>
801002df:	83 c4 10             	add    $0x10,%esp
801002e2:	8b 45 0c             	mov    0xc(%ebp),%eax
801002e5:	c1 e8 08             	shr    $0x8,%eax
801002e8:	0f b6 c0             	movzbl %al,%eax
801002eb:	83 ec 08             	sub    $0x8,%esp
801002ee:	50                   	push   %eax
801002ef:	68 f4 01 00 00       	push   $0x1f4
801002f4:	e8 77 ff ff ff       	call   80100270 <outb>
801002f9:	83 c4 10             	add    $0x10,%esp
801002fc:	8b 45 0c             	mov    0xc(%ebp),%eax
801002ff:	c1 e8 10             	shr    $0x10,%eax
80100302:	0f b6 c0             	movzbl %al,%eax
80100305:	83 ec 08             	sub    $0x8,%esp
80100308:	50                   	push   %eax
80100309:	68 f5 01 00 00       	push   $0x1f5
8010030e:	e8 5d ff ff ff       	call   80100270 <outb>
80100313:	83 c4 10             	add    $0x10,%esp
80100316:	83 ec 08             	sub    $0x8,%esp
80100319:	6a 20                	push   $0x20
8010031b:	68 f7 01 00 00       	push   $0x1f7
80100320:	e8 4b ff ff ff       	call   80100270 <outb>
80100325:	83 c4 10             	add    $0x10,%esp
80100328:	e8 1b 00 00 00       	call   80100348 <waitdisk>
8010032d:	83 ec 04             	sub    $0x4,%esp
80100330:	68 00 01 00 00       	push   $0x100
80100335:	ff 75 08             	pushl  0x8(%ebp)
80100338:	68 f0 01 00 00       	push   $0x1f0
8010033d:	e8 07 ff ff ff       	call   80100249 <insw>
80100342:	83 c4 10             	add    $0x10,%esp
80100345:	90                   	nop
80100346:	c9                   	leave  
80100347:	c3                   	ret    

80100348 <waitdisk>:
waitdisk():
80100348:	55                   	push   %ebp
80100349:	89 e5                	mov    %esp,%ebp
8010034b:	90                   	nop
8010034c:	68 f7 01 00 00       	push   $0x1f7
80100351:	e8 d6 fe ff ff       	call   8010022c <inb>
80100356:	83 c4 04             	add    $0x4,%esp
80100359:	0f b6 c0             	movzbl %al,%eax
8010035c:	25 c0 00 00 00       	and    $0xc0,%eax
80100361:	83 f8 40             	cmp    $0x40,%eax
80100364:	75 e6                	jne    8010034c <waitdisk+0x4>
80100366:	90                   	nop
80100367:	90                   	nop
80100368:	c9                   	leave  
80100369:	c3                   	ret    

8010036a <readseg>:
readseg():
8010036a:	55                   	push   %ebp
8010036b:	89 e5                	mov    %esp,%ebp
8010036d:	83 ec 18             	sub    $0x18,%esp
80100370:	8b 55 08             	mov    0x8(%ebp),%edx
80100373:	8b 45 0c             	mov    0xc(%ebp),%eax
80100376:	01 d0                	add    %edx,%eax
80100378:	89 45 f0             	mov    %eax,-0x10(%ebp)
8010037b:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010037e:	05 ff 01 00 00       	add    $0x1ff,%eax
80100383:	25 00 fe ff ff       	and    $0xfffffe00,%eax
80100388:	01 45 f0             	add    %eax,-0x10(%ebp)
8010038b:	8b 45 10             	mov    0x10(%ebp),%eax
8010038e:	05 00 10 00 00       	add    $0x1000,%eax
80100393:	c1 e8 09             	shr    $0x9,%eax
80100396:	89 45 f4             	mov    %eax,-0xc(%ebp)
80100399:	eb 1c                	jmp    801003b7 <readseg+0x4d>
8010039b:	83 ec 08             	sub    $0x8,%esp
8010039e:	ff 75 f4             	pushl  -0xc(%ebp)
801003a1:	ff 75 08             	pushl  0x8(%ebp)
801003a4:	e8 e8 fe ff ff       	call   80100291 <readsect>
801003a9:	83 c4 10             	add    $0x10,%esp
801003ac:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
801003b3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
801003b7:	8b 45 08             	mov    0x8(%ebp),%eax
801003ba:	3b 45 f0             	cmp    -0x10(%ebp),%eax
801003bd:	72 dc                	jb     8010039b <readseg+0x31>
801003bf:	90                   	nop
801003c0:	90                   	nop
801003c1:	c9                   	leave  
801003c2:	c3                   	ret    

801003c3 <inb>:
inb():
801003c3:	55                   	push   %ebp
801003c4:	89 e5                	mov    %esp,%ebp
801003c6:	83 ec 14             	sub    $0x14,%esp
801003c9:	8b 45 08             	mov    0x8(%ebp),%eax
801003cc:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
801003d0:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
801003d4:	89 c2                	mov    %eax,%edx
801003d6:	ec                   	in     (%dx),%al
801003d7:	88 45 ff             	mov    %al,-0x1(%ebp)
801003da:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
801003de:	c9                   	leave  
801003df:	c3                   	ret    

801003e0 <outb>:
outb():
801003e0:	55                   	push   %ebp
801003e1:	89 e5                	mov    %esp,%ebp
801003e3:	83 ec 08             	sub    $0x8,%esp
801003e6:	8b 45 08             	mov    0x8(%ebp),%eax
801003e9:	8b 55 0c             	mov    0xc(%ebp),%edx
801003ec:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
801003f0:	89 d0                	mov    %edx,%eax
801003f2:	88 45 f8             	mov    %al,-0x8(%ebp)
801003f5:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
801003f9:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
801003fd:	ee                   	out    %al,(%dx)
801003fe:	90                   	nop
801003ff:	c9                   	leave  
80100400:	c3                   	ret    

80100401 <main>:
main():
80100401:	8d 4c 24 04          	lea    0x4(%esp),%ecx
80100405:	83 e4 f0             	and    $0xfffffff0,%esp
80100408:	ff 71 fc             	pushl  -0x4(%ecx)
8010040b:	55                   	push   %ebp
8010040c:	89 e5                	mov    %esp,%ebp
8010040e:	51                   	push   %ecx
8010040f:	83 ec 04             	sub    $0x4,%esp
80100412:	83 ec 0c             	sub    $0xc,%esp
80100415:	68 ad 06 10 80       	push   $0x801006ad
8010041a:	e8 61 fd ff ff       	call   80100180 <println>
8010041f:	83 c4 10             	add    $0x10,%esp
80100422:	83 ec 0c             	sub    $0xc,%esp
80100425:	68 0e 10 00 00       	push   $0x100e
8010042a:	e8 05 00 00 00       	call   80100434 <play_sound>
8010042f:	83 c4 10             	add    $0x10,%esp
80100432:	eb ee                	jmp    80100422 <main+0x21>

80100434 <play_sound>:
play_sound():
80100434:	55                   	push   %ebp
80100435:	89 e5                	mov    %esp,%ebp
80100437:	83 ec 10             	sub    $0x10,%esp
8010043a:	b8 dc 34 12 00       	mov    $0x1234dc,%eax
8010043f:	ba 00 00 00 00       	mov    $0x0,%edx
80100444:	f7 75 08             	divl   0x8(%ebp)
80100447:	89 45 fc             	mov    %eax,-0x4(%ebp)
8010044a:	68 b6 00 00 00       	push   $0xb6
8010044f:	6a 43                	push   $0x43
80100451:	e8 8a ff ff ff       	call   801003e0 <outb>
80100456:	83 c4 08             	add    $0x8,%esp
80100459:	8b 45 fc             	mov    -0x4(%ebp),%eax
8010045c:	0f b6 c0             	movzbl %al,%eax
8010045f:	50                   	push   %eax
80100460:	6a 42                	push   $0x42
80100462:	e8 79 ff ff ff       	call   801003e0 <outb>
80100467:	83 c4 08             	add    $0x8,%esp
8010046a:	8b 45 fc             	mov    -0x4(%ebp),%eax
8010046d:	c1 e8 08             	shr    $0x8,%eax
80100470:	0f b6 c0             	movzbl %al,%eax
80100473:	50                   	push   %eax
80100474:	6a 42                	push   $0x42
80100476:	e8 65 ff ff ff       	call   801003e0 <outb>
8010047b:	83 c4 08             	add    $0x8,%esp
8010047e:	6a 61                	push   $0x61
80100480:	e8 3e ff ff ff       	call   801003c3 <inb>
80100485:	83 c4 04             	add    $0x4,%esp
80100488:	88 45 fb             	mov    %al,-0x5(%ebp)
8010048b:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
8010048f:	83 c8 03             	or     $0x3,%eax
80100492:	38 45 fb             	cmp    %al,-0x5(%ebp)
80100495:	74 15                	je     801004ac <play_sound+0x78>
80100497:	0f b6 45 fb          	movzbl -0x5(%ebp),%eax
8010049b:	83 c8 03             	or     $0x3,%eax
8010049e:	0f b6 c0             	movzbl %al,%eax
801004a1:	50                   	push   %eax
801004a2:	6a 61                	push   $0x61
801004a4:	e8 37 ff ff ff       	call   801003e0 <outb>
801004a9:	83 c4 08             	add    $0x8,%esp
801004ac:	90                   	nop
801004ad:	c9                   	leave  
801004ae:	c3                   	ret    

801004af <nosound>:
nosound():
801004af:	55                   	push   %ebp
801004b0:	89 e5                	mov    %esp,%ebp
801004b2:	83 ec 10             	sub    $0x10,%esp
801004b5:	6a 61                	push   $0x61
801004b7:	e8 07 ff ff ff       	call   801003c3 <inb>
801004bc:	83 c4 04             	add    $0x4,%esp
801004bf:	83 e0 fc             	and    $0xfffffffc,%eax
801004c2:	88 45 ff             	mov    %al,-0x1(%ebp)
801004c5:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
801004c9:	50                   	push   %eax
801004ca:	6a 61                	push   $0x61
801004cc:	e8 0f ff ff ff       	call   801003e0 <outb>
801004d1:	83 c4 08             	add    $0x8,%esp
801004d4:	90                   	nop
801004d5:	c9                   	leave  
801004d6:	c3                   	ret    

801004d7 <beep>:
beep():
801004d7:	55                   	push   %ebp
801004d8:	89 e5                	mov    %esp,%ebp
801004da:	83 ec 10             	sub    $0x10,%esp
801004dd:	68 e8 03 00 00       	push   $0x3e8
801004e2:	e8 4d ff ff ff       	call   80100434 <play_sound>
801004e7:	83 c4 04             	add    $0x4,%esp
801004ea:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
801004f1:	eb 04                	jmp    801004f7 <beep+0x20>
801004f3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
801004f7:	81 7d fc 0f 27 00 00 	cmpl   $0x270f,-0x4(%ebp)
801004fe:	7e f3                	jle    801004f3 <beep+0x1c>
80100500:	e8 aa ff ff ff       	call   801004af <nosound>
80100505:	90                   	nop
80100506:	c9                   	leave  
80100507:	c3                   	ret    
80100508:	66 90                	xchg   %ax,%ax
8010050a:	66 90                	xchg   %ax,%ax
8010050c:	66 90                	xchg   %ax,%ax
8010050e:	66 90                	xchg   %ax,%ax

80100510 <entry>:
entry():
80100510:	0f 20 e0             	mov    %cr4,%eax
80100513:	83 c8 10             	or     $0x10,%eax
80100516:	0f 22 e0             	mov    %eax,%cr4
80100519:	b8 00 20 10 00       	mov    $0x102000,%eax
8010051e:	0f 22 d8             	mov    %eax,%cr3
80100521:	0f 20 c0             	mov    %cr0,%eax
80100524:	0d 01 00 01 80       	or     $0x80010001,%eax
80100529:	0f 22 c0             	mov    %eax,%cr0
8010052c:	b8 33 05 10 80       	mov    $0x80100533,%eax
80100531:	eb 00                	jmp    80100533 <relocated>

80100533 <relocated>:
relocated():
80100533:	31 ed                	xor    %ebp,%ebp
80100535:	bc 00 40 10 80       	mov    $0x80104000,%esp
8010053a:	e8 c2 fe ff ff       	call   80100401 <main>

8010053f <spin>:
spin():
8010053f:	eb fe                	jmp    8010053f <spin>

80100541 <itoa>:
itoa():
80100541:	55                   	push   %ebp
80100542:	89 e5                	mov    %esp,%ebp
80100544:	83 ec 18             	sub    $0x18,%esp
80100547:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
8010054e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
80100555:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80100559:	75 26                	jne    80100581 <itoa+0x40>
8010055b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010055e:	8d 50 01             	lea    0x1(%eax),%edx
80100561:	89 55 f4             	mov    %edx,-0xc(%ebp)
80100564:	89 c2                	mov    %eax,%edx
80100566:	8b 45 0c             	mov    0xc(%ebp),%eax
80100569:	01 d0                	add    %edx,%eax
8010056b:	c6 00 30             	movb   $0x30,(%eax)
8010056e:	8b 55 f4             	mov    -0xc(%ebp),%edx
80100571:	8b 45 0c             	mov    0xc(%ebp),%eax
80100574:	01 d0                	add    %edx,%eax
80100576:	c6 00 00             	movb   $0x0,(%eax)
80100579:	8b 45 0c             	mov    0xc(%ebp),%eax
8010057c:	e9 91 00 00 00       	jmp    80100612 <itoa+0xd1>
80100581:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80100585:	79 50                	jns    801005d7 <itoa+0x96>
80100587:	83 7d 10 0a          	cmpl   $0xa,0x10(%ebp)
8010058b:	75 4a                	jne    801005d7 <itoa+0x96>
8010058d:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
80100594:	f7 5d 08             	negl   0x8(%ebp)
80100597:	eb 3e                	jmp    801005d7 <itoa+0x96>
80100599:	8b 45 08             	mov    0x8(%ebp),%eax
8010059c:	99                   	cltd   
8010059d:	f7 7d 10             	idivl  0x10(%ebp)
801005a0:	89 55 ec             	mov    %edx,-0x14(%ebp)
801005a3:	83 7d ec 09          	cmpl   $0x9,-0x14(%ebp)
801005a7:	7e 0a                	jle    801005b3 <itoa+0x72>
801005a9:	8b 45 ec             	mov    -0x14(%ebp),%eax
801005ac:	83 c0 57             	add    $0x57,%eax
801005af:	89 c1                	mov    %eax,%ecx
801005b1:	eb 08                	jmp    801005bb <itoa+0x7a>
801005b3:	8b 45 ec             	mov    -0x14(%ebp),%eax
801005b6:	83 c0 30             	add    $0x30,%eax
801005b9:	89 c1                	mov    %eax,%ecx
801005bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
801005be:	8d 50 01             	lea    0x1(%eax),%edx
801005c1:	89 55 f4             	mov    %edx,-0xc(%ebp)
801005c4:	89 c2                	mov    %eax,%edx
801005c6:	8b 45 0c             	mov    0xc(%ebp),%eax
801005c9:	01 d0                	add    %edx,%eax
801005cb:	88 08                	mov    %cl,(%eax)
801005cd:	8b 45 08             	mov    0x8(%ebp),%eax
801005d0:	99                   	cltd   
801005d1:	f7 7d 10             	idivl  0x10(%ebp)
801005d4:	89 45 08             	mov    %eax,0x8(%ebp)
801005d7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
801005db:	75 bc                	jne    80100599 <itoa+0x58>
801005dd:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
801005e1:	74 13                	je     801005f6 <itoa+0xb5>
801005e3:	8b 45 f4             	mov    -0xc(%ebp),%eax
801005e6:	8d 50 01             	lea    0x1(%eax),%edx
801005e9:	89 55 f4             	mov    %edx,-0xc(%ebp)
801005ec:	89 c2                	mov    %eax,%edx
801005ee:	8b 45 0c             	mov    0xc(%ebp),%eax
801005f1:	01 d0                	add    %edx,%eax
801005f3:	c6 00 2d             	movb   $0x2d,(%eax)
801005f6:	8b 55 f4             	mov    -0xc(%ebp),%edx
801005f9:	8b 45 0c             	mov    0xc(%ebp),%eax
801005fc:	01 d0                	add    %edx,%eax
801005fe:	c6 00 00             	movb   $0x0,(%eax)
80100601:	83 ec 0c             	sub    $0xc,%esp
80100604:	ff 75 0c             	pushl  0xc(%ebp)
80100607:	e8 08 00 00 00       	call   80100614 <reverse>
8010060c:	83 c4 10             	add    $0x10,%esp
8010060f:	8b 45 0c             	mov    0xc(%ebp),%eax
80100612:	c9                   	leave  
80100613:	c3                   	ret    

80100614 <reverse>:
reverse():
80100614:	55                   	push   %ebp
80100615:	89 e5                	mov    %esp,%ebp
80100617:	83 ec 18             	sub    $0x18,%esp
8010061a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
8010061e:	74 64                	je     80100684 <reverse+0x70>
80100620:	83 ec 0c             	sub    $0xc,%esp
80100623:	ff 75 08             	pushl  0x8(%ebp)
80100626:	e8 5c 00 00 00       	call   80100687 <strlen>
8010062b:	83 c4 10             	add    $0x10,%esp
8010062e:	8d 50 ff             	lea    -0x1(%eax),%edx
80100631:	8b 45 08             	mov    0x8(%ebp),%eax
80100634:	01 d0                	add    %edx,%eax
80100636:	89 45 f4             	mov    %eax,-0xc(%ebp)
80100639:	eb 41                	jmp    8010067c <reverse+0x68>
8010063b:	8b 45 08             	mov    0x8(%ebp),%eax
8010063e:	0f b6 10             	movzbl (%eax),%edx
80100641:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100644:	0f b6 00             	movzbl (%eax),%eax
80100647:	31 c2                	xor    %eax,%edx
80100649:	8b 45 08             	mov    0x8(%ebp),%eax
8010064c:	88 10                	mov    %dl,(%eax)
8010064e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100651:	0f b6 10             	movzbl (%eax),%edx
80100654:	8b 45 08             	mov    0x8(%ebp),%eax
80100657:	0f b6 00             	movzbl (%eax),%eax
8010065a:	31 c2                	xor    %eax,%edx
8010065c:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010065f:	88 10                	mov    %dl,(%eax)
80100661:	8b 45 08             	mov    0x8(%ebp),%eax
80100664:	0f b6 10             	movzbl (%eax),%edx
80100667:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010066a:	0f b6 00             	movzbl (%eax),%eax
8010066d:	31 c2                	xor    %eax,%edx
8010066f:	8b 45 08             	mov    0x8(%ebp),%eax
80100672:	88 10                	mov    %dl,(%eax)
80100674:	83 45 08 01          	addl   $0x1,0x8(%ebp)
80100678:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
8010067c:	8b 45 08             	mov    0x8(%ebp),%eax
8010067f:	3b 45 f4             	cmp    -0xc(%ebp),%eax
80100682:	72 b7                	jb     8010063b <reverse+0x27>
80100684:	90                   	nop
80100685:	c9                   	leave  
80100686:	c3                   	ret    

80100687 <strlen>:
strlen():
80100687:	55                   	push   %ebp
80100688:	89 e5                	mov    %esp,%ebp
8010068a:	83 ec 10             	sub    $0x10,%esp
8010068d:	8b 45 08             	mov    0x8(%ebp),%eax
80100690:	89 45 fc             	mov    %eax,-0x4(%ebp)
80100693:	eb 04                	jmp    80100699 <strlen+0x12>
80100695:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
80100699:	8b 45 fc             	mov    -0x4(%ebp),%eax
8010069c:	0f b6 00             	movzbl (%eax),%eax
8010069f:	84 c0                	test   %al,%al
801006a1:	75 f2                	jne    80100695 <strlen+0xe>
801006a3:	8b 45 fc             	mov    -0x4(%ebp),%eax
801006a6:	2b 45 08             	sub    0x8(%ebp),%eax
801006a9:	c9                   	leave  
801006aa:	c3                   	ret    

Disassembly of section .rodata:

801006ab <.rodata>:
801006ab:	20 00                	and    %al,(%eax)
801006ad:	77 65                	ja     80100714 <strlen+0x8d>
801006af:	20 65 6e             	and    %ah,0x6e(%ebp)
801006b2:	74 65                	je     80100719 <strlen+0x92>
801006b4:	72 65                	jb     8010071b <strlen+0x94>
801006b6:	64 20 74 68 65       	and    %dh,%fs:0x65(%eax,%ebp,2)
801006bb:	20 6b 65             	and    %ch,0x65(%ebx)
801006be:	72 6e                	jb     8010072e <strlen+0xa7>
801006c0:	65 6c                	gs insb (%dx),%es:(%edi)
801006c2:	21 00                	and    %eax,(%eax)

Disassembly of section .stab:

801006c4 <.stab>:
	...

Disassembly of section .stabstr:

801006c5 <.stabstr>:
	...

Disassembly of section .data:

80101000 <cga_mem>:
80101000:	00 80 0b 00      	add    %al,0x7000b(%eax)

80101004 <text_palette>:
80101004:	07                   	pop    %es
	...

80102000 <entrypgdir>:
80102000:	83 00 00             	addl   $0x0,(%eax)
	...
801027ff:	00 83 00 00 00 00    	add    %al,0x0(%ebx)
	...

80103000 <kernel_stack>:
	...

Disassembly of section .bss:

80104000 <bg_palette>:
	...

80104001 <cursor_offset>:
	...

80104002 <curr_row>:
	...

80105000 <entrypgtable>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 47 4e             	sub    %al,0x4e(%edi)
   8:	55                   	push   %ebp
   9:	29 20                	sub    %esp,(%eax)
   b:	39 2e                	cmp    %ebp,(%esi)
   d:	32 2e                	xor    (%esi),%ch
   f:	30 00                	xor    %al,(%eax)
