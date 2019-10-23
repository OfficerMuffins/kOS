
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
80100080:	0f b6 05 02 50 10 80 	movzbl 0x80105002,%eax
80100087:	0f b6 d0             	movzbl %al,%edx
8010008a:	89 d0                	mov    %edx,%eax
8010008c:	c1 e0 02             	shl    $0x2,%eax
8010008f:	01 d0                	add    %edx,%eax
80100091:	c1 e0 04             	shl    $0x4,%eax
80100094:	89 c2                	mov    %eax,%edx
80100096:	0f b6 05 01 50 10 80 	movzbl 0x80105001,%eax
8010009d:	0f b6 c0             	movzbl %al,%eax
801000a0:	01 d0                	add    %edx,%eax
801000a2:	01 c0                	add    %eax,%eax
801000a4:	01 c8                	add    %ecx,%eax
801000a6:	89 da                	mov    %ebx,%edx
801000a8:	66 89 10             	mov    %dx,(%eax)
801000ab:	0f b6 05 01 50 10 80 	movzbl 0x80105001,%eax
801000b2:	83 c0 01             	add    $0x1,%eax
801000b5:	a2 01 50 10 80       	mov    %al,0x80105001
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
8010011f:	68 bb 05 10 80       	push   $0x801005bb
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
8010013f:	0f b6 05 00 50 10 80 	movzbl 0x80105000,%eax
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
8010018e:	0f b6 05 02 50 10 80 	movzbl 0x80105002,%eax
80100195:	83 c0 01             	add    $0x1,%eax
80100198:	a2 02 50 10 80       	mov    %al,0x80105002
8010019d:	c6 05 01 50 10 80 00 	movb   $0x0,0x80105001
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
80100294:	83 ec 18             	sub    $0x18,%esp
80100297:	83 ec 0c             	sub    $0xc,%esp
8010029a:	68 bd 05 10 80       	push   $0x801005bd
8010029f:	e8 8b fe ff ff       	call   8010012f <print>
801002a4:	83 c4 10             	add    $0x10,%esp
801002a7:	8b 45 0c             	mov    0xc(%ebp),%eax
801002aa:	83 ec 04             	sub    $0x4,%esp
801002ad:	6a 0a                	push   $0xa
801002af:	8d 55 ee             	lea    -0x12(%ebp),%edx
801002b2:	52                   	push   %edx
801002b3:	50                   	push   %eax
801002b4:	e8 98 01 00 00       	call   80100451 <itoa>
801002b9:	83 c4 10             	add    $0x10,%esp
801002bc:	83 ec 0c             	sub    $0xc,%esp
801002bf:	8d 45 ee             	lea    -0x12(%ebp),%eax
801002c2:	50                   	push   %eax
801002c3:	e8 b8 fe ff ff       	call   80100180 <println>
801002c8:	83 c4 10             	add    $0x10,%esp
801002cb:	e8 ac 00 00 00       	call   8010037c <waitdisk>
801002d0:	8b 45 0c             	mov    0xc(%ebp),%eax
801002d3:	c1 e8 18             	shr    $0x18,%eax
801002d6:	83 c8 e0             	or     $0xffffffe0,%eax
801002d9:	0f b6 c0             	movzbl %al,%eax
801002dc:	83 ec 08             	sub    $0x8,%esp
801002df:	50                   	push   %eax
801002e0:	68 f6 01 00 00       	push   $0x1f6
801002e5:	e8 86 ff ff ff       	call   80100270 <outb>
801002ea:	83 c4 10             	add    $0x10,%esp
801002ed:	83 ec 08             	sub    $0x8,%esp
801002f0:	6a 01                	push   $0x1
801002f2:	68 f2 01 00 00       	push   $0x1f2
801002f7:	e8 74 ff ff ff       	call   80100270 <outb>
801002fc:	83 c4 10             	add    $0x10,%esp
801002ff:	8b 45 0c             	mov    0xc(%ebp),%eax
80100302:	0f b6 c0             	movzbl %al,%eax
80100305:	83 ec 08             	sub    $0x8,%esp
80100308:	50                   	push   %eax
80100309:	68 f3 01 00 00       	push   $0x1f3
8010030e:	e8 5d ff ff ff       	call   80100270 <outb>
80100313:	83 c4 10             	add    $0x10,%esp
80100316:	8b 45 0c             	mov    0xc(%ebp),%eax
80100319:	c1 e8 08             	shr    $0x8,%eax
8010031c:	0f b6 c0             	movzbl %al,%eax
8010031f:	83 ec 08             	sub    $0x8,%esp
80100322:	50                   	push   %eax
80100323:	68 f4 01 00 00       	push   $0x1f4
80100328:	e8 43 ff ff ff       	call   80100270 <outb>
8010032d:	83 c4 10             	add    $0x10,%esp
80100330:	8b 45 0c             	mov    0xc(%ebp),%eax
80100333:	c1 e8 10             	shr    $0x10,%eax
80100336:	0f b6 c0             	movzbl %al,%eax
80100339:	83 ec 08             	sub    $0x8,%esp
8010033c:	50                   	push   %eax
8010033d:	68 f5 01 00 00       	push   $0x1f5
80100342:	e8 29 ff ff ff       	call   80100270 <outb>
80100347:	83 c4 10             	add    $0x10,%esp
8010034a:	83 ec 08             	sub    $0x8,%esp
8010034d:	6a 20                	push   $0x20
8010034f:	68 f7 01 00 00       	push   $0x1f7
80100354:	e8 17 ff ff ff       	call   80100270 <outb>
80100359:	83 c4 10             	add    $0x10,%esp
8010035c:	e8 1b 00 00 00       	call   8010037c <waitdisk>
80100361:	83 ec 04             	sub    $0x4,%esp
80100364:	68 00 01 00 00       	push   $0x100
80100369:	ff 75 08             	pushl  0x8(%ebp)
8010036c:	68 f0 01 00 00       	push   $0x1f0
80100371:	e8 d3 fe ff ff       	call   80100249 <insw>
80100376:	83 c4 10             	add    $0x10,%esp
80100379:	90                   	nop
8010037a:	c9                   	leave  
8010037b:	c3                   	ret    

8010037c <waitdisk>:
waitdisk():
8010037c:	55                   	push   %ebp
8010037d:	89 e5                	mov    %esp,%ebp
8010037f:	90                   	nop
80100380:	68 f7 01 00 00       	push   $0x1f7
80100385:	e8 a2 fe ff ff       	call   8010022c <inb>
8010038a:	83 c4 04             	add    $0x4,%esp
8010038d:	0f b6 c0             	movzbl %al,%eax
80100390:	25 c0 00 00 00       	and    $0xc0,%eax
80100395:	83 f8 40             	cmp    $0x40,%eax
80100398:	75 e6                	jne    80100380 <waitdisk+0x4>
8010039a:	90                   	nop
8010039b:	90                   	nop
8010039c:	c9                   	leave  
8010039d:	c3                   	ret    

8010039e <readseg>:
readseg():
8010039e:	55                   	push   %ebp
8010039f:	89 e5                	mov    %esp,%ebp
801003a1:	83 ec 18             	sub    $0x18,%esp
801003a4:	8b 55 08             	mov    0x8(%ebp),%edx
801003a7:	8b 45 0c             	mov    0xc(%ebp),%eax
801003aa:	01 d0                	add    %edx,%eax
801003ac:	89 45 f0             	mov    %eax,-0x10(%ebp)
801003af:	8b 45 f0             	mov    -0x10(%ebp),%eax
801003b2:	05 ff 01 00 00       	add    $0x1ff,%eax
801003b7:	25 00 fe ff ff       	and    $0xfffffe00,%eax
801003bc:	01 45 f0             	add    %eax,-0x10(%ebp)
801003bf:	8b 45 10             	mov    0x10(%ebp),%eax
801003c2:	05 00 10 00 00       	add    $0x1000,%eax
801003c7:	c1 e8 09             	shr    $0x9,%eax
801003ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
801003cd:	eb 1c                	jmp    801003eb <readseg+0x4d>
801003cf:	83 ec 08             	sub    $0x8,%esp
801003d2:	ff 75 f4             	pushl  -0xc(%ebp)
801003d5:	ff 75 08             	pushl  0x8(%ebp)
801003d8:	e8 b4 fe ff ff       	call   80100291 <readsect>
801003dd:	83 c4 10             	add    $0x10,%esp
801003e0:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
801003e7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
801003eb:	8b 45 08             	mov    0x8(%ebp),%eax
801003ee:	3b 45 f0             	cmp    -0x10(%ebp),%eax
801003f1:	72 dc                	jb     801003cf <readseg+0x31>
801003f3:	90                   	nop
801003f4:	90                   	nop
801003f5:	c9                   	leave  
801003f6:	c3                   	ret    

801003f7 <main>:
main():
801003f7:	8d 4c 24 04          	lea    0x4(%esp),%ecx
801003fb:	83 e4 f0             	and    $0xfffffff0,%esp
801003fe:	ff 71 fc             	pushl  -0x4(%ecx)
80100401:	55                   	push   %ebp
80100402:	89 e5                	mov    %esp,%ebp
80100404:	51                   	push   %ecx
80100405:	83 ec 04             	sub    $0x4,%esp
80100408:	83 ec 0c             	sub    $0xc,%esp
8010040b:	68 ca 05 10 80       	push   $0x801005ca
80100410:	e8 6b fd ff ff       	call   80100180 <println>
80100415:	83 c4 10             	add    $0x10,%esp
80100418:	eb fe                	jmp    80100418 <main+0x21>
8010041a:	66 90                	xchg   %ax,%ax
8010041c:	66 90                	xchg   %ax,%ax
8010041e:	66 90                	xchg   %ax,%ax

80100420 <entry>:
entry():
80100420:	0f 20 e0             	mov    %cr4,%eax
80100423:	83 c8 10             	or     $0x10,%eax
80100426:	0f 22 e0             	mov    %eax,%cr4
80100429:	b8 00 30 10 00       	mov    $0x103000,%eax
8010042e:	0f 22 d8             	mov    %eax,%cr3
80100431:	0f 20 c0             	mov    %cr0,%eax
80100434:	0d 01 00 01 80       	or     $0x80010001,%eax
80100439:	0f 22 c0             	mov    %eax,%cr0
8010043c:	b8 43 04 10 80       	mov    $0x80100443,%eax
80100441:	eb 00                	jmp    80100443 <relocated>

80100443 <relocated>:
relocated():
80100443:	31 ed                	xor    %ebp,%ebp
80100445:	bc 00 50 10 80       	mov    $0x80105000,%esp
8010044a:	e8 a8 ff ff ff       	call   801003f7 <main>

8010044f <spin>:
spin():
8010044f:	eb fe                	jmp    8010044f <spin>

80100451 <itoa>:
itoa():
80100451:	55                   	push   %ebp
80100452:	89 e5                	mov    %esp,%ebp
80100454:	83 ec 18             	sub    $0x18,%esp
80100457:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
8010045e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
80100465:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80100469:	75 26                	jne    80100491 <itoa+0x40>
8010046b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010046e:	8d 50 01             	lea    0x1(%eax),%edx
80100471:	89 55 f4             	mov    %edx,-0xc(%ebp)
80100474:	89 c2                	mov    %eax,%edx
80100476:	8b 45 0c             	mov    0xc(%ebp),%eax
80100479:	01 d0                	add    %edx,%eax
8010047b:	c6 00 30             	movb   $0x30,(%eax)
8010047e:	8b 55 f4             	mov    -0xc(%ebp),%edx
80100481:	8b 45 0c             	mov    0xc(%ebp),%eax
80100484:	01 d0                	add    %edx,%eax
80100486:	c6 00 00             	movb   $0x0,(%eax)
80100489:	8b 45 0c             	mov    0xc(%ebp),%eax
8010048c:	e9 91 00 00 00       	jmp    80100522 <itoa+0xd1>
80100491:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80100495:	79 50                	jns    801004e7 <itoa+0x96>
80100497:	83 7d 10 0a          	cmpl   $0xa,0x10(%ebp)
8010049b:	75 4a                	jne    801004e7 <itoa+0x96>
8010049d:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
801004a4:	f7 5d 08             	negl   0x8(%ebp)
801004a7:	eb 3e                	jmp    801004e7 <itoa+0x96>
801004a9:	8b 45 08             	mov    0x8(%ebp),%eax
801004ac:	99                   	cltd   
801004ad:	f7 7d 10             	idivl  0x10(%ebp)
801004b0:	89 55 ec             	mov    %edx,-0x14(%ebp)
801004b3:	83 7d ec 09          	cmpl   $0x9,-0x14(%ebp)
801004b7:	7e 0a                	jle    801004c3 <itoa+0x72>
801004b9:	8b 45 ec             	mov    -0x14(%ebp),%eax
801004bc:	83 c0 57             	add    $0x57,%eax
801004bf:	89 c1                	mov    %eax,%ecx
801004c1:	eb 08                	jmp    801004cb <itoa+0x7a>
801004c3:	8b 45 ec             	mov    -0x14(%ebp),%eax
801004c6:	83 c0 30             	add    $0x30,%eax
801004c9:	89 c1                	mov    %eax,%ecx
801004cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
801004ce:	8d 50 01             	lea    0x1(%eax),%edx
801004d1:	89 55 f4             	mov    %edx,-0xc(%ebp)
801004d4:	89 c2                	mov    %eax,%edx
801004d6:	8b 45 0c             	mov    0xc(%ebp),%eax
801004d9:	01 d0                	add    %edx,%eax
801004db:	88 08                	mov    %cl,(%eax)
801004dd:	8b 45 08             	mov    0x8(%ebp),%eax
801004e0:	99                   	cltd   
801004e1:	f7 7d 10             	idivl  0x10(%ebp)
801004e4:	89 45 08             	mov    %eax,0x8(%ebp)
801004e7:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
801004eb:	75 bc                	jne    801004a9 <itoa+0x58>
801004ed:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
801004f1:	74 13                	je     80100506 <itoa+0xb5>
801004f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
801004f6:	8d 50 01             	lea    0x1(%eax),%edx
801004f9:	89 55 f4             	mov    %edx,-0xc(%ebp)
801004fc:	89 c2                	mov    %eax,%edx
801004fe:	8b 45 0c             	mov    0xc(%ebp),%eax
80100501:	01 d0                	add    %edx,%eax
80100503:	c6 00 2d             	movb   $0x2d,(%eax)
80100506:	8b 55 f4             	mov    -0xc(%ebp),%edx
80100509:	8b 45 0c             	mov    0xc(%ebp),%eax
8010050c:	01 d0                	add    %edx,%eax
8010050e:	c6 00 00             	movb   $0x0,(%eax)
80100511:	83 ec 0c             	sub    $0xc,%esp
80100514:	ff 75 0c             	pushl  0xc(%ebp)
80100517:	e8 08 00 00 00       	call   80100524 <reverse>
8010051c:	83 c4 10             	add    $0x10,%esp
8010051f:	8b 45 0c             	mov    0xc(%ebp),%eax
80100522:	c9                   	leave  
80100523:	c3                   	ret    

80100524 <reverse>:
reverse():
80100524:	55                   	push   %ebp
80100525:	89 e5                	mov    %esp,%ebp
80100527:	83 ec 18             	sub    $0x18,%esp
8010052a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
8010052e:	74 64                	je     80100594 <reverse+0x70>
80100530:	83 ec 0c             	sub    $0xc,%esp
80100533:	ff 75 08             	pushl  0x8(%ebp)
80100536:	e8 5c 00 00 00       	call   80100597 <strlen>
8010053b:	83 c4 10             	add    $0x10,%esp
8010053e:	8d 50 ff             	lea    -0x1(%eax),%edx
80100541:	8b 45 08             	mov    0x8(%ebp),%eax
80100544:	01 d0                	add    %edx,%eax
80100546:	89 45 f4             	mov    %eax,-0xc(%ebp)
80100549:	eb 41                	jmp    8010058c <reverse+0x68>
8010054b:	8b 45 08             	mov    0x8(%ebp),%eax
8010054e:	0f b6 10             	movzbl (%eax),%edx
80100551:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100554:	0f b6 00             	movzbl (%eax),%eax
80100557:	31 c2                	xor    %eax,%edx
80100559:	8b 45 08             	mov    0x8(%ebp),%eax
8010055c:	88 10                	mov    %dl,(%eax)
8010055e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100561:	0f b6 10             	movzbl (%eax),%edx
80100564:	8b 45 08             	mov    0x8(%ebp),%eax
80100567:	0f b6 00             	movzbl (%eax),%eax
8010056a:	31 c2                	xor    %eax,%edx
8010056c:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010056f:	88 10                	mov    %dl,(%eax)
80100571:	8b 45 08             	mov    0x8(%ebp),%eax
80100574:	0f b6 10             	movzbl (%eax),%edx
80100577:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010057a:	0f b6 00             	movzbl (%eax),%eax
8010057d:	31 c2                	xor    %eax,%edx
8010057f:	8b 45 08             	mov    0x8(%ebp),%eax
80100582:	88 10                	mov    %dl,(%eax)
80100584:	83 45 08 01          	addl   $0x1,0x8(%ebp)
80100588:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
8010058c:	8b 45 08             	mov    0x8(%ebp),%eax
8010058f:	3b 45 f4             	cmp    -0xc(%ebp),%eax
80100592:	72 b7                	jb     8010054b <reverse+0x27>
80100594:	90                   	nop
80100595:	c9                   	leave  
80100596:	c3                   	ret    

80100597 <strlen>:
strlen():
80100597:	55                   	push   %ebp
80100598:	89 e5                	mov    %esp,%ebp
8010059a:	83 ec 10             	sub    $0x10,%esp
8010059d:	8b 45 08             	mov    0x8(%ebp),%eax
801005a0:	89 45 fc             	mov    %eax,-0x4(%ebp)
801005a3:	eb 04                	jmp    801005a9 <strlen+0x12>
801005a5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
801005a9:	8b 45 fc             	mov    -0x4(%ebp),%eax
801005ac:	0f b6 00             	movzbl (%eax),%eax
801005af:	84 c0                	test   %al,%al
801005b1:	75 f2                	jne    801005a5 <strlen+0xe>
801005b3:	8b 45 fc             	mov    -0x4(%ebp),%eax
801005b6:	2b 45 08             	sub    0x8(%ebp),%eax
801005b9:	c9                   	leave  
801005ba:	c3                   	ret    

Disassembly of section .rodata:

801005bb <.rodata>:
801005bb:	20 00                	and    %al,(%eax)
801005bd:	52                   	push   %edx
801005be:	65 61                	gs popa 
801005c0:	64 69 6e 67 20 4c 42 	imul   $0x41424c20,%fs:0x67(%esi),%ebp
801005c7:	41 
801005c8:	20 00                	and    %al,(%eax)
801005ca:	53                   	push   %ebx
801005cb:	74 61                	je     8010062e <strlen+0x97>
801005cd:	72 74                	jb     80100643 <strlen+0xac>
801005cf:	69 6e 67 20 6b 65 72 	imul   $0x72656b20,0x67(%esi),%ebp
801005d6:	6e                   	outsb  %ds:(%esi),(%dx)
801005d7:	65 6c                	gs insb (%dx),%es:(%edi)
801005d9:	00 39                	add    %bh,(%ecx)
801005db:	31 32                	xor    %esi,(%edx)
801005dd:	33 31                	xor    (%ecx),%esi
	...

Disassembly of section .stab:

801005e0 <.stab>:
	...

Disassembly of section .stabstr:

801005e1 <.stabstr>:
	...

Disassembly of section .data:

80101000 <cga_mem>:
80101000:	00 80 0b 00      	add    %al,0x7000b(%eax)

80101004 <text_palette>:
80101004:	07                   	pop    %es
	...

80102000 <a>:
80102000:	da 05 10 80 00 00    	fiaddl 0x8010
	...

80103000 <entrypgdir>:
80103000:	21 50 10             	and    %edx,0x10(%eax)
80103003:	00 00                	add    %al,(%eax)
80103005:	00 00                	add    %al,(%eax)
80103007:	00 12                	add    %dl,(%edx)
80103009:	9e                   	sahf   
	...
801037fe:	00 00                	add    %al,(%eax)
80103800:	23 50 10             	and    0x10(%eax),%edx
	...

80104000 <kernel_stack>:
	...

Disassembly of section .bss:

80105000 <bg_palette>:
	...

80105001 <cursor_offset>:
	...

80105002 <curr_row>:
	...

80105020 <entrypgtable>:
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
