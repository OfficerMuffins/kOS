
boot/bootblock.bin:     file format binary


Disassembly of section .data:

00007c00 <.data>:
    7c00:	31 c0                	xor    %eax,%eax
    7c02:	8c d8                	mov    %ds,%eax
    7c04:	8c c0                	mov    %es,%eax
    7c06:	8c d0                	mov    %ss,%eax
    7c08:	be 3d 7c e8 d3       	mov    $0xd3e87c3d,%esi
    7c0d:	00 be 48 7c e8 cd    	add    %bh,-0x321783b8(%esi)
    7c13:	00 be 5e 7c e8 c7    	add    %bh,-0x381783a2(%esi)
    7c19:	00 b4 41 bb aa 55 b2 	add    %dh,-0x4daa5545(%ecx,%eax,2)
    7c20:	80 cd 13             	or     $0x13,%ch
    7c23:	72 0f                	jb     0x7c34
    7c25:	b8 01 00 bb 00       	mov    $0xbb0001,%eax
    7c2a:	7e b9                	jle    0x7be5
    7c2c:	01 00                	add    %eax,(%eax)
    7c2e:	e8 03 01 e9 cc       	call   0xcce97d36
    7c33:	01 be 78 7c e8 a7    	add    %edi,-0x58178388(%esi)
    7c39:	00 f4                	add    %dh,%ah
    7c3b:	eb fd                	jmp    0x7c3a
    7c3d:	0d 0a 3c 6b 4f       	or     $0x4f6b3c0a,%eax
    7c42:	53                   	push   %ebx
    7c43:	3e 0d 0a 0a 00 0d    	ds or  $0xd000a0a,%eax
    7c49:	0a 46 69             	or     0x69(%esi),%al
    7c4c:	6e                   	outsb  %ds:(%esi),(%dx)
    7c4d:	69 73 68 65 64 20 73 	imul   $0x73206465,0x68(%ebx),%esi
    7c54:	74 61                	je     0x7cb7
    7c56:	67 65 20 31          	and    %dh,%gs:(%bx,%di)
    7c5a:	0d 0a 0a 00 73       	or     $0x73000a0a,%eax
    7c5f:	74 61                	je     0x7cc2
    7c61:	67 65 31 3a          	xor    %edi,%gs:(%bp,%si)
    7c65:	20 4c 6f 61          	and    %cl,0x61(%edi,%ebp,2)
    7c69:	64 69 6e 67 20 73 74 	imul   $0x61747320,%fs:0x67(%esi),%ebp
    7c70:	61 
    7c71:	67 65 32 2e 2e 2e    	xor    %gs:0x2e2e,%ch
    7c77:	00 0d 0a 45 72 72    	add    %cl,0x7272450a
    7c7d:	6f                   	outsl  %ds:(%esi),(%dx)
    7c7e:	72 20                	jb     0x7ca0
    7c80:	72 65                	jb     0x7ce7
    7c82:	61                   	popa   
    7c83:	64 69 6e 67 20 64 69 	imul   $0x73696420,%fs:0x67(%esi),%ebp
    7c8a:	73 
    7c8b:	6b 2c 20 73          	imul   $0x73,(%eax,%eiz,1),%ebp
    7c8f:	79 73                	jns    0x7d04
    7c91:	74 65                	je     0x7cf8
    7c93:	6d                   	insl   (%dx),%es:(%edi)
    7c94:	20 68 61             	and    %ch,0x61(%eax)
    7c97:	6c                   	insb   (%dx),%es:(%edi)
    7c98:	74 65                	je     0x7cff
    7c9a:	64 2e 00 0d 0a 45 72 	fs add %cl,%cs:0x7272450a
    7ca1:	72 
    7ca2:	6f                   	outsl  %ds:(%esi),(%dx)
    7ca3:	72 20                	jb     0x7cc5
    7ca5:	65 6e                	outsb  %gs:(%esi),(%dx)
    7ca7:	61                   	popa   
    7ca8:	62 6c 69 6e          	bound  %ebp,0x6e(%ecx,%ebp,2)
    7cac:	67 20 61 32          	and    %ah,0x32(%bx,%di)
    7cb0:	30 2c 20             	xor    %ch,(%eax,%eiz,1)
    7cb3:	73 79                	jae    0x7d2e
    7cb5:	73 74                	jae    0x7d2b
    7cb7:	65 6d                	gs insl (%dx),%es:(%edi)
    7cb9:	20 68 61             	and    %ch,0x61(%eax)
    7cbc:	6c                   	insb   (%dx),%es:(%edi)
    7cbd:	74 65                	je     0x7d24
    7cbf:	64 2e 00 20          	fs add %ah,%cs:(%eax)
    7cc3:	20 44 4f 4e          	and    %al,0x4e(%edi,%ecx,2)
    7cc7:	45                   	inc    %ebp
    7cc8:	0d 0a 00 0d 0a       	or     $0xa0d000a,%eax
    7ccd:	45                   	inc    %ebp
    7cce:	6e                   	outsb  %ds:(%esi),(%dx)
    7ccf:	61                   	popa   
    7cd0:	62 6c 69 6e          	bound  %ebp,0x6e(%ecx,%ebp,2)
    7cd4:	67 20 74 68          	and    %dh,0x68(%si)
    7cd8:	65 20 41 32          	and    %al,%gs:0x32(%ecx)
    7cdc:	30 2e                	xor    %ch,(%esi)
    7cde:	2e 2e 00 50 56       	cs add %dl,%cs:0x56(%eax)
    7ce3:	b4 0e                	mov    $0xe,%ah
    7ce5:	ac                   	lods   %ds:(%esi),%al
    7ce6:	84 c0                	test   %al,%al
    7ce8:	74 04                	je     0x7cee
    7cea:	cd 10                	int    $0x10
    7cec:	eb f7                	jmp    0x7ce5
    7cee:	5e                   	pop    %esi
    7cef:	58                   	pop    %eax
    7cf0:	c3                   	ret    
    7cf1:	66 50                	push   %ax
    7cf3:	66 53                	push   %bx
    7cf5:	66 51                	push   %cx
    7cf7:	66 52                	push   %dx
    7cf9:	66 56                	push   %si
    7cfb:	66 57                	push   %di
    7cfd:	06                   	push   %es
    7cfe:	8f 06                	popl   (%esi)
    7d00:	2a 7d 89             	sub    -0x77(%ebp),%bh
    7d03:	1e                   	push   %ds
    7d04:	28 7d 66             	sub    %bh,0x66(%ebp)
    7d07:	a3 2c 7d 66 31       	mov    %eax,0x31667d2c
    7d0c:	f6 be 24 7d b4 42    	idivb  0x42b47d24(%esi)
    7d12:	f8                   	clc    
    7d13:	cd 13                	int    $0x13
    7d15:	66 5f                	pop    %di
    7d17:	66 5e                	pop    %si
    7d19:	66 5a                	pop    %dx
    7d1b:	66 59                	pop    %cx
    7d1d:	66 5b                	pop    %bx
    7d1f:	66 58                	pop    %ax
    7d21:	c3                   	ret    
    7d22:	90                   	nop
    7d23:	90                   	nop
    7d24:	10 00                	adc    %al,(%eax)
    7d26:	01 00                	add    %eax,(%eax)
	...
    7d34:	66 50                	push   %ax
    7d36:	66 53                	push   %bx
    7d38:	66 51                	push   %cx
    7d3a:	66 52                	push   %dx
    7d3c:	66 56                	push   %si
    7d3e:	66 57                	push   %di
    7d40:	06                   	push   %es
    7d41:	66 53                	push   %bx
    7d43:	bb 00 70 8e c3       	mov    $0xc38e7000,%ebx
    7d48:	31 db                	xor    %ebx,%ebx
    7d4a:	e8 a4 ff 66 5b       	call   0x5b677cf3
    7d4f:	07                   	pop    %es
    7d50:	72 26                	jb     0x7d78
    7d52:	1e                   	push   %ds
    7d53:	be 00 70 8e de       	mov    $0xde8e7000,%esi
    7d58:	66 89 df             	mov    %bx,%di
    7d5b:	66 31 f6             	xor    %si,%si
    7d5e:	66 51                	push   %cx
    7d60:	66 b9 00 02          	mov    $0x200,%cx
    7d64:	00 00                	add    %al,(%eax)
    7d66:	f3 66 67 a4          	rep data16 movsb %ds:(%si),%es:(%di)
    7d6a:	66 59                	pop    %cx
    7d6c:	1f                   	pop    %ds
    7d6d:	66 40                	inc    %ax
    7d6f:	66 81 c3 00 02       	add    $0x200,%bx
    7d74:	00 00                	add    %al,(%eax)
    7d76:	e2 c8                	loop   0x7d40
    7d78:	66 5f                	pop    %di
    7d7a:	66 5e                	pop    %si
    7d7c:	66 5a                	pop    %dx
    7d7e:	66 59                	pop    %cx
    7d80:	66 5b                	pop    %bx
    7d82:	66 58                	pop    %ax
    7d84:	c3                   	ret    
	...
    7dfd:	00 55 aa             	add    %dl,-0x56(%ebp)
    7e00:	b8 02 00 66 bb       	mov    $0xbb660002,%eax
    7e05:	00 80 00 00 b9 0c    	add    %al,0xcb90000(%eax)
    7e0b:	00 e8                	add    %ch,%al
    7e0d:	25 ff 0f 82 d2       	and    $0xd2820fff,%eax
    7e12:	00 be c2 7c e8 c8    	add    %bh,-0x3717833e(%esi)
    7e18:	fe                   	(bad)  
    7e19:	be cb 7c e8 c2       	mov    $0xc2e87ccb,%esi
    7e1e:	fe                   	(bad)  
    7e1f:	e8 44 00 0f 01       	call   0x10f7e68
    7e24:	16                   	push   %ss
    7e25:	b7 7e                	mov    $0x7e,%bh
    7e27:	fa                   	cli    
    7e28:	0f 20 c0             	mov    %cr0,%eax
    7e2b:	66 83 c8 01          	or     $0x1,%ax
    7e2f:	0f 22 c0             	mov    %eax,%cr0
    7e32:	ea 37 7e 18 00 66 b8 	ljmp   $0xb866,$0x187e37
    7e39:	20 00                	and    %al,(%eax)
    7e3b:	8e d8                	mov    %eax,%ds
    7e3d:	8e c0                	mov    %eax,%es
    7e3f:	8e e0                	mov    %eax,%fs
    7e41:	8e e8                	mov    %eax,%gs
    7e43:	8e d0                	mov    %eax,%ss
    7e45:	e9 b6 01 00 00       	jmp    0x8000
    7e4a:	50                   	push   %eax
    7e4b:	53                   	push   %ebx
    7e4c:	06                   	push   %es
    7e4d:	0f a0                	push   %fs
    7e4f:	31 c0                	xor    %eax,%eax
    7e51:	8e c0                	mov    %eax,%es
    7e53:	f7 d0                	not    %eax
    7e55:	8e e0                	mov    %eax,%fs
    7e57:	26 a1 fe 7d 64 3b    	mov    %es:0x3b647dfe,%eax
    7e5d:	06                   	push   %es
    7e5e:	0e                   	push   %cs
    7e5f:	7e 0f                	jle    0x7e70
    7e61:	a1 07 5b 58 c3       	mov    0xc3585b07,%eax
    7e66:	50                   	push   %eax
    7e67:	e8 e0 ff e4 64       	call   0x64e57e4c
    7e6c:	a8 02                	test   $0x2,%al
    7e6e:	75 fa                	jne    0x7e6a
    7e70:	b0 d1                	mov    $0xd1,%al
    7e72:	e6 64                	out    %al,$0x64
    7e74:	e4 64                	in     $0x64,%al
    7e76:	a8 02                	test   $0x2,%al
    7e78:	75 f0                	jne    0x7e6a
    7e7a:	b0 df                	mov    $0xdf,%al
    7e7c:	e6 60                	out    %al,$0x60
    7e7e:	e8 02 00 58 c3       	call   0xc3587e85
    7e83:	50                   	push   %eax
    7e84:	53                   	push   %ebx
    7e85:	06                   	push   %es
    7e86:	0f a0                	push   %fs
    7e88:	31 c0                	xor    %eax,%eax
    7e8a:	8e c0                	mov    %eax,%es
    7e8c:	f7 d0                	not    %eax
    7e8e:	8e e0                	mov    %eax,%fs
    7e90:	26 c7 06 fe 7d 34 12 	movl   $0x12347dfe,%es:(%esi)
    7e97:	64 81 3e 0e 7e 34 12 	cmpl   $0x12347e0e,%fs:(%esi)
    7e9e:	0f 84 fb fd be c2    	je     0xc2bf7c9f
    7ea4:	7c e8                	jl     0x7e8e
    7ea6:	39 fe                	cmp    %edi,%esi
    7ea8:	0f a1                	pop    %fs
    7eaa:	07                   	pop    %es
    7eab:	5b                   	pop    %ebx
    7eac:	58                   	pop    %eax
    7ead:	c3                   	ret    
    7eae:	be 9d 7c e8 2d       	mov    $0x2de87c9d,%esi
    7eb3:	fe                   	(bad)  
    7eb4:	e9 83 fd 27 00       	jmp    0x287c3c
    7eb9:	bd 7e 00 00 00       	mov    $0x7e,%ebp
    7ebe:	00 00                	add    %al,(%eax)
    7ec0:	00 00                	add    %al,(%eax)
    7ec2:	00 00                	add    %al,(%eax)
    7ec4:	00 ff                	add    %bh,%bh
    7ec6:	ff 00                	incl   (%eax)
    7ec8:	00 00                	add    %al,(%eax)
    7eca:	9a 8f 00 ff ff 00 00 	lcall  $0x0,$0xffff008f
    7ed1:	00 92 8f 00 ff ff    	add    %dl,-0xff71(%edx)
    7ed7:	00 00                	add    %al,(%eax)
    7ed9:	00 9a cf 00 ff ff    	add    %bl,-0xff31(%edx)
    7edf:	00 00                	add    %al,(%eax)
    7ee1:	00 92 cf 00 be 78    	add    %dl,0x78be00cf(%edx)
    7ee7:	7c e8                	jl     0x7ed1
    7ee9:	f6 fd                	idiv   %ch
	...
    7fff:	00 e8                	add    %ch,%al
    8001:	95                   	xchg   %eax,%ebp
    8002:	01 00                	add    %eax,(%eax)
    8004:	00 e9                	add    %ch,%cl
    8006:	f6 fb                	idiv   %bl
    8008:	ff                   	(bad)  
    8009:	ff 55 89             	call   *-0x77(%ebp)
    800c:	e5 57                	in     $0x57,%eax
    800e:	53                   	push   %ebx
    800f:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8012:	8b 55 10             	mov    0x10(%ebp),%edx
    8015:	8b 45 0c             	mov    0xc(%ebp),%eax
    8018:	89 cb                	mov    %ecx,%ebx
    801a:	89 df                	mov    %ebx,%edi
    801c:	89 d1                	mov    %edx,%ecx
    801e:	fc                   	cld    
    801f:	f3 aa                	rep stos %al,%es:(%edi)
    8021:	89 ca                	mov    %ecx,%edx
    8023:	89 fb                	mov    %edi,%ebx
    8025:	89 5d 08             	mov    %ebx,0x8(%ebp)
    8028:	89 55 10             	mov    %edx,0x10(%ebp)
    802b:	90                   	nop
    802c:	5b                   	pop    %ebx
    802d:	5f                   	pop    %edi
    802e:	5d                   	pop    %ebp
    802f:	c3                   	ret    
    8030:	55                   	push   %ebp
    8031:	89 e5                	mov    %esp,%ebp
    8033:	83 ec 18             	sub    $0x18,%esp
    8036:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    803d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    8044:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    8048:	75 26                	jne    0x8070
    804a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    804d:	8d 50 01             	lea    0x1(%eax),%edx
    8050:	89 55 f4             	mov    %edx,-0xc(%ebp)
    8053:	89 c2                	mov    %eax,%edx
    8055:	8b 45 0c             	mov    0xc(%ebp),%eax
    8058:	01 d0                	add    %edx,%eax
    805a:	c6 00 30             	movb   $0x30,(%eax)
    805d:	8b 55 f4             	mov    -0xc(%ebp),%edx
    8060:	8b 45 0c             	mov    0xc(%ebp),%eax
    8063:	01 d0                	add    %edx,%eax
    8065:	c6 00 00             	movb   $0x0,(%eax)
    8068:	8b 45 0c             	mov    0xc(%ebp),%eax
    806b:	e9 91 00 00 00       	jmp    0x8101
    8070:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    8074:	79 50                	jns    0x80c6
    8076:	83 7d 10 0a          	cmpl   $0xa,0x10(%ebp)
    807a:	75 4a                	jne    0x80c6
    807c:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    8083:	f7 5d 08             	negl   0x8(%ebp)
    8086:	eb 3e                	jmp    0x80c6
    8088:	8b 45 08             	mov    0x8(%ebp),%eax
    808b:	99                   	cltd   
    808c:	f7 7d 10             	idivl  0x10(%ebp)
    808f:	89 55 ec             	mov    %edx,-0x14(%ebp)
    8092:	83 7d ec 09          	cmpl   $0x9,-0x14(%ebp)
    8096:	7e 0a                	jle    0x80a2
    8098:	8b 45 ec             	mov    -0x14(%ebp),%eax
    809b:	83 c0 57             	add    $0x57,%eax
    809e:	89 c1                	mov    %eax,%ecx
    80a0:	eb 08                	jmp    0x80aa
    80a2:	8b 45 ec             	mov    -0x14(%ebp),%eax
    80a5:	83 c0 30             	add    $0x30,%eax
    80a8:	89 c1                	mov    %eax,%ecx
    80aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
    80ad:	8d 50 01             	lea    0x1(%eax),%edx
    80b0:	89 55 f4             	mov    %edx,-0xc(%ebp)
    80b3:	89 c2                	mov    %eax,%edx
    80b5:	8b 45 0c             	mov    0xc(%ebp),%eax
    80b8:	01 d0                	add    %edx,%eax
    80ba:	88 08                	mov    %cl,(%eax)
    80bc:	8b 45 08             	mov    0x8(%ebp),%eax
    80bf:	99                   	cltd   
    80c0:	f7 7d 10             	idivl  0x10(%ebp)
    80c3:	89 45 08             	mov    %eax,0x8(%ebp)
    80c6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    80ca:	75 bc                	jne    0x8088
    80cc:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
    80d0:	74 13                	je     0x80e5
    80d2:	8b 45 f4             	mov    -0xc(%ebp),%eax
    80d5:	8d 50 01             	lea    0x1(%eax),%edx
    80d8:	89 55 f4             	mov    %edx,-0xc(%ebp)
    80db:	89 c2                	mov    %eax,%edx
    80dd:	8b 45 0c             	mov    0xc(%ebp),%eax
    80e0:	01 d0                	add    %edx,%eax
    80e2:	c6 00 2d             	movb   $0x2d,(%eax)
    80e5:	8b 55 f4             	mov    -0xc(%ebp),%edx
    80e8:	8b 45 0c             	mov    0xc(%ebp),%eax
    80eb:	01 d0                	add    %edx,%eax
    80ed:	c6 00 00             	movb   $0x0,(%eax)
    80f0:	83 ec 0c             	sub    $0xc,%esp
    80f3:	ff 75 0c             	pushl  0xc(%ebp)
    80f6:	e8 08 00 00 00       	call   0x8103
    80fb:	83 c4 10             	add    $0x10,%esp
    80fe:	8b 45 0c             	mov    0xc(%ebp),%eax
    8101:	c9                   	leave  
    8102:	c3                   	ret    
    8103:	55                   	push   %ebp
    8104:	89 e5                	mov    %esp,%ebp
    8106:	83 ec 18             	sub    $0x18,%esp
    8109:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    810d:	74 64                	je     0x8173
    810f:	83 ec 0c             	sub    $0xc,%esp
    8112:	ff 75 08             	pushl  0x8(%ebp)
    8115:	e8 5c 00 00 00       	call   0x8176
    811a:	83 c4 10             	add    $0x10,%esp
    811d:	8d 50 ff             	lea    -0x1(%eax),%edx
    8120:	8b 45 08             	mov    0x8(%ebp),%eax
    8123:	01 d0                	add    %edx,%eax
    8125:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8128:	eb 41                	jmp    0x816b
    812a:	8b 45 08             	mov    0x8(%ebp),%eax
    812d:	0f b6 10             	movzbl (%eax),%edx
    8130:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8133:	0f b6 00             	movzbl (%eax),%eax
    8136:	31 c2                	xor    %eax,%edx
    8138:	8b 45 08             	mov    0x8(%ebp),%eax
    813b:	88 10                	mov    %dl,(%eax)
    813d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8140:	0f b6 10             	movzbl (%eax),%edx
    8143:	8b 45 08             	mov    0x8(%ebp),%eax
    8146:	0f b6 00             	movzbl (%eax),%eax
    8149:	31 c2                	xor    %eax,%edx
    814b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    814e:	88 10                	mov    %dl,(%eax)
    8150:	8b 45 08             	mov    0x8(%ebp),%eax
    8153:	0f b6 10             	movzbl (%eax),%edx
    8156:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8159:	0f b6 00             	movzbl (%eax),%eax
    815c:	31 c2                	xor    %eax,%edx
    815e:	8b 45 08             	mov    0x8(%ebp),%eax
    8161:	88 10                	mov    %dl,(%eax)
    8163:	83 45 08 01          	addl   $0x1,0x8(%ebp)
    8167:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
    816b:	8b 45 08             	mov    0x8(%ebp),%eax
    816e:	3b 45 f4             	cmp    -0xc(%ebp),%eax
    8171:	72 b7                	jb     0x812a
    8173:	90                   	nop
    8174:	c9                   	leave  
    8175:	c3                   	ret    
    8176:	55                   	push   %ebp
    8177:	89 e5                	mov    %esp,%ebp
    8179:	83 ec 10             	sub    $0x10,%esp
    817c:	8b 45 08             	mov    0x8(%ebp),%eax
    817f:	89 45 fc             	mov    %eax,-0x4(%ebp)
    8182:	eb 04                	jmp    0x8188
    8184:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
    8188:	8b 45 fc             	mov    -0x4(%ebp),%eax
    818b:	0f b6 00             	movzbl (%eax),%eax
    818e:	84 c0                	test   %al,%al
    8190:	75 f2                	jne    0x8184
    8192:	8b 45 fc             	mov    -0x4(%ebp),%eax
    8195:	2b 45 08             	sub    0x8(%ebp),%eax
    8198:	c9                   	leave  
    8199:	c3                   	ret    
    819a:	55                   	push   %ebp
    819b:	89 e5                	mov    %esp,%ebp
    819d:	83 ec 28             	sub    $0x28,%esp
    81a0:	e8 9c 01 00 00       	call   0x8341
    81a5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    81ac:	83 ec 04             	sub    $0x4,%esp
    81af:	68 00 10 00 00       	push   $0x1000
    81b4:	68 00 10 00 00       	push   $0x1000
    81b9:	ff 75 f0             	pushl  -0x10(%ebp)
    81bc:	e8 e0 04 00 00       	call   0x86a1
    81c1:	83 c4 10             	add    $0x10,%esp
    81c4:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81c7:	8b 00                	mov    (%eax),%eax
    81c9:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
    81ce:	74 0d                	je     0x81dd
    81d0:	83 ec 0c             	sub    $0xc,%esp
    81d3:	6a ff                	push   $0xffffffff
    81d5:	e8 f5 00 00 00       	call   0x82cf
    81da:	83 c4 10             	add    $0x10,%esp
    81dd:	83 ec 0c             	sub    $0xc,%esp
    81e0:	68 10 8a 00 00       	push   $0x8a10
    81e5:	e8 99 02 00 00       	call   0x8483
    81ea:	83 c4 10             	add    $0x10,%esp
    81ed:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81f0:	8b 50 1c             	mov    0x1c(%eax),%edx
    81f3:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81f6:	01 d0                	add    %edx,%eax
    81f8:	89 45 f4             	mov    %eax,-0xc(%ebp)
    81fb:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81fe:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    8202:	0f b7 c0             	movzwl %ax,%eax
    8205:	c1 e0 05             	shl    $0x5,%eax
    8208:	89 c2                	mov    %eax,%edx
    820a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    820d:	01 d0                	add    %edx,%eax
    820f:	89 45 ec             	mov    %eax,-0x14(%ebp)
    8212:	83 ec 0c             	sub    $0xc,%esp
    8215:	68 2d 8a 00 00       	push   $0x8a2d
    821a:	e8 64 02 00 00       	call   0x8483
    821f:	83 c4 10             	add    $0x10,%esp
    8222:	eb 65                	jmp    0x8289
    8224:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8227:	8b 40 0c             	mov    0xc(%eax),%eax
    822a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    822d:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8230:	8b 50 04             	mov    0x4(%eax),%edx
    8233:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8236:	8b 40 10             	mov    0x10(%eax),%eax
    8239:	83 ec 04             	sub    $0x4,%esp
    823c:	52                   	push   %edx
    823d:	50                   	push   %eax
    823e:	ff 75 e4             	pushl  -0x1c(%ebp)
    8241:	e8 5b 04 00 00       	call   0x86a1
    8246:	83 c4 10             	add    $0x10,%esp
    8249:	8b 45 f4             	mov    -0xc(%ebp),%eax
    824c:	8b 50 14             	mov    0x14(%eax),%edx
    824f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8252:	8b 40 10             	mov    0x10(%eax),%eax
    8255:	39 c2                	cmp    %eax,%edx
    8257:	76 2c                	jbe    0x8285
    8259:	8b 45 f4             	mov    -0xc(%ebp),%eax
    825c:	8b 50 14             	mov    0x14(%eax),%edx
    825f:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8262:	8b 40 10             	mov    0x10(%eax),%eax
    8265:	29 c2                	sub    %eax,%edx
    8267:	89 d0                	mov    %edx,%eax
    8269:	89 c1                	mov    %eax,%ecx
    826b:	8b 45 f4             	mov    -0xc(%ebp),%eax
    826e:	8b 50 10             	mov    0x10(%eax),%edx
    8271:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8274:	01 d0                	add    %edx,%eax
    8276:	83 ec 04             	sub    $0x4,%esp
    8279:	51                   	push   %ecx
    827a:	6a 00                	push   $0x0
    827c:	50                   	push   %eax
    827d:	e8 88 fd ff ff       	call   0x800a
    8282:	83 c4 10             	add    $0x10,%esp
    8285:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
    8289:	8b 45 f4             	mov    -0xc(%ebp),%eax
    828c:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    828f:	72 93                	jb     0x8224
    8291:	83 ec 0c             	sub    $0xc,%esp
    8294:	68 2d 8a 00 00       	push   $0x8a2d
    8299:	e8 e5 01 00 00       	call   0x8483
    829e:	83 c4 10             	add    $0x10,%esp
    82a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    82a4:	8b 40 18             	mov    0x18(%eax),%eax
    82a7:	89 45 e8             	mov    %eax,-0x18(%ebp)
    82aa:	83 ec 0c             	sub    $0xc,%esp
    82ad:	68 32 8a 00 00       	push   $0x8a32
    82b2:	e8 cc 01 00 00       	call   0x8483
    82b7:	83 c4 10             	add    $0x10,%esp
    82ba:	8b 45 e8             	mov    -0x18(%ebp),%eax
    82bd:	ff d0                	call   *%eax
    82bf:	83 ec 0c             	sub    $0xc,%esp
    82c2:	6a fe                	push   $0xfffffffe
    82c4:	e8 06 00 00 00       	call   0x82cf
    82c9:	83 c4 10             	add    $0x10,%esp
    82cc:	90                   	nop
    82cd:	c9                   	leave  
    82ce:	c3                   	ret    
    82cf:	55                   	push   %ebp
    82d0:	89 e5                	mov    %esp,%ebp
    82d2:	83 ec 08             	sub    $0x8,%esp
    82d5:	83 7d 08 ff          	cmpl   $0xffffffff,0x8(%ebp)
    82d9:	75 10                	jne    0x82eb
    82db:	83 ec 0c             	sub    $0xc,%esp
    82de:	68 44 8a 00 00       	push   $0x8a44
    82e3:	e8 9b 01 00 00       	call   0x8483
    82e8:	83 c4 10             	add    $0x10,%esp
    82eb:	83 7d 08 fe          	cmpl   $0xfffffffe,0x8(%ebp)
    82ef:	75 10                	jne    0x8301
    82f1:	83 ec 0c             	sub    $0xc,%esp
    82f4:	68 6f 8a 00 00       	push   $0x8a6f
    82f9:	e8 85 01 00 00       	call   0x8483
    82fe:	83 c4 10             	add    $0x10,%esp
    8301:	eb fe                	jmp    0x8301
    8303:	55                   	push   %ebp
    8304:	89 e5                	mov    %esp,%ebp
    8306:	83 ec 14             	sub    $0x14,%esp
    8309:	8b 45 08             	mov    0x8(%ebp),%eax
    830c:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    8310:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
    8314:	89 c2                	mov    %eax,%edx
    8316:	ec                   	in     (%dx),%al
    8317:	88 45 ff             	mov    %al,-0x1(%ebp)
    831a:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
    831e:	c9                   	leave  
    831f:	c3                   	ret    
    8320:	55                   	push   %ebp
    8321:	89 e5                	mov    %esp,%ebp
    8323:	83 ec 08             	sub    $0x8,%esp
    8326:	8b 45 08             	mov    0x8(%ebp),%eax
    8329:	8b 55 0c             	mov    0xc(%ebp),%edx
    832c:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
    8330:	89 d0                	mov    %edx,%eax
    8332:	88 45 f8             	mov    %al,-0x8(%ebp)
    8335:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
    8339:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
    833d:	ee                   	out    %al,(%dx)
    833e:	90                   	nop
    833f:	c9                   	leave  
    8340:	c3                   	ret    
    8341:	55                   	push   %ebp
    8342:	89 e5                	mov    %esp,%ebp
    8344:	83 ec 08             	sub    $0x8,%esp
    8347:	e8 78 00 00 00       	call   0x83c4
    834c:	90                   	nop
    834d:	c9                   	leave  
    834e:	c3                   	ret    
    834f:	55                   	push   %ebp
    8350:	89 e5                	mov    %esp,%ebp
    8352:	53                   	push   %ebx
    8353:	83 ec 10             	sub    $0x10,%esp
    8356:	8b 45 10             	mov    0x10(%ebp),%eax
    8359:	c1 e0 04             	shl    $0x4,%eax
    835c:	89 c2                	mov    %eax,%edx
    835e:	8b 45 0c             	mov    0xc(%ebp),%eax
    8361:	83 e0 0f             	and    $0xf,%eax
    8364:	09 d0                	or     %edx,%eax
    8366:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
    836a:	8b 45 08             	mov    0x8(%ebp),%eax
    836d:	0f b6 00             	movzbl (%eax),%eax
    8370:	66 98                	cbtw   
    8372:	0f b7 55 fa          	movzwl -0x6(%ebp),%edx
    8376:	c1 e2 08             	shl    $0x8,%edx
    8379:	09 d0                	or     %edx,%eax
    837b:	89 c3                	mov    %eax,%ebx
    837d:	8b 0d 94 8a 00 00    	mov    0x8a94,%ecx
    8383:	0f b6 05 9b 8a 00 00 	movzbl 0x8a9b,%eax
    838a:	0f b6 d0             	movzbl %al,%edx
    838d:	89 d0                	mov    %edx,%eax
    838f:	c1 e0 02             	shl    $0x2,%eax
    8392:	01 d0                	add    %edx,%eax
    8394:	c1 e0 04             	shl    $0x4,%eax
    8397:	89 c2                	mov    %eax,%edx
    8399:	0f b6 05 9a 8a 00 00 	movzbl 0x8a9a,%eax
    83a0:	0f b6 c0             	movzbl %al,%eax
    83a3:	01 d0                	add    %edx,%eax
    83a5:	01 c0                	add    %eax,%eax
    83a7:	01 c8                	add    %ecx,%eax
    83a9:	89 da                	mov    %ebx,%edx
    83ab:	66 89 10             	mov    %dx,(%eax)
    83ae:	0f b6 05 9a 8a 00 00 	movzbl 0x8a9a,%eax
    83b5:	83 c0 01             	add    $0x1,%eax
    83b8:	a2 9a 8a 00 00       	mov    %al,0x8a9a
    83bd:	90                   	nop
    83be:	83 c4 10             	add    $0x10,%esp
    83c1:	5b                   	pop    %ebx
    83c2:	5d                   	pop    %ebp
    83c3:	c3                   	ret    
    83c4:	55                   	push   %ebp
    83c5:	89 e5                	mov    %esp,%ebp
    83c7:	83 ec 18             	sub    $0x18,%esp
    83ca:	66 c7 45 f6 00 00    	movw   $0x0,-0xa(%ebp)
    83d0:	eb 2d                	jmp    0x83ff
    83d2:	0f b6 05 98 8a 00 00 	movzbl 0x8a98,%eax
    83d9:	83 c8 20             	or     $0x20,%eax
    83dc:	89 c1                	mov    %eax,%ecx
    83de:	a1 94 8a 00 00       	mov    0x8a94,%eax
    83e3:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
    83e7:	0f b7 d2             	movzwl %dx,%edx
    83ea:	01 d2                	add    %edx,%edx
    83ec:	01 c2                	add    %eax,%edx
    83ee:	0f b6 c1             	movzbl %cl,%eax
    83f1:	66 89 02             	mov    %ax,(%edx)
    83f4:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
    83f8:	83 c0 01             	add    $0x1,%eax
    83fb:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
    83ff:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
    8403:	66 3d 1f 08          	cmp    $0x81f,%ax
    8407:	76 c9                	jbe    0x83d2
    8409:	83 ec 08             	sub    $0x8,%esp
    840c:	6a 00                	push   $0x0
    840e:	6a 00                	push   $0x0
    8410:	e8 06 00 00 00       	call   0x841b
    8415:	83 c4 10             	add    $0x10,%esp
    8418:	90                   	nop
    8419:	c9                   	leave  
    841a:	c3                   	ret    
    841b:	55                   	push   %ebp
    841c:	89 e5                	mov    %esp,%ebp
    841e:	6a 0f                	push   $0xf
    8420:	6a 0f                	push   $0xf
    8422:	68 85 8a 00 00       	push   $0x8a85
    8427:	e8 23 ff ff ff       	call   0x834f
    842c:	83 c4 0c             	add    $0xc,%esp
    842f:	90                   	nop
    8430:	c9                   	leave  
    8431:	c3                   	ret    
    8432:	55                   	push   %ebp
    8433:	89 e5                	mov    %esp,%ebp
    8435:	53                   	push   %ebx
    8436:	83 ec 10             	sub    $0x10,%esp
    8439:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    8440:	eb 2b                	jmp    0x846d
    8442:	0f b6 05 99 8a 00 00 	movzbl 0x8a99,%eax
    8449:	0f b6 d0             	movzbl %al,%edx
    844c:	0f b6 05 98 8a 00 00 	movzbl 0x8a98,%eax
    8453:	0f b6 c0             	movzbl %al,%eax
    8456:	8b 5d f8             	mov    -0x8(%ebp),%ebx
    8459:	8b 4d 08             	mov    0x8(%ebp),%ecx
    845c:	01 d9                	add    %ebx,%ecx
    845e:	52                   	push   %edx
    845f:	50                   	push   %eax
    8460:	51                   	push   %ecx
    8461:	e8 e9 fe ff ff       	call   0x834f
    8466:	83 c4 0c             	add    $0xc,%esp
    8469:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    846d:	8b 55 f8             	mov    -0x8(%ebp),%edx
    8470:	8b 45 08             	mov    0x8(%ebp),%eax
    8473:	01 d0                	add    %edx,%eax
    8475:	0f b6 00             	movzbl (%eax),%eax
    8478:	84 c0                	test   %al,%al
    847a:	75 c6                	jne    0x8442
    847c:	90                   	nop
    847d:	90                   	nop
    847e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    8481:	c9                   	leave  
    8482:	c3                   	ret    
    8483:	55                   	push   %ebp
    8484:	89 e5                	mov    %esp,%ebp
    8486:	ff 75 08             	pushl  0x8(%ebp)
    8489:	e8 a4 ff ff ff       	call   0x8432
    848e:	83 c4 04             	add    $0x4,%esp
    8491:	0f b6 05 9b 8a 00 00 	movzbl 0x8a9b,%eax
    8498:	83 c0 01             	add    $0x1,%eax
    849b:	a2 9b 8a 00 00       	mov    %al,0x8a9b
    84a0:	c6 05 9a 8a 00 00 00 	movb   $0x0,0x8a9a
    84a7:	90                   	nop
    84a8:	c9                   	leave  
    84a9:	c3                   	ret    
    84aa:	55                   	push   %ebp
    84ab:	89 e5                	mov    %esp,%ebp
    84ad:	83 ec 08             	sub    $0x8,%esp
    84b0:	8b 55 08             	mov    0x8(%ebp),%edx
    84b3:	8b 45 0c             	mov    0xc(%ebp),%eax
    84b6:	88 55 fc             	mov    %dl,-0x4(%ebp)
    84b9:	88 45 f8             	mov    %al,-0x8(%ebp)
    84bc:	6a 0a                	push   $0xa
    84be:	68 d4 03 00 00       	push   $0x3d4
    84c3:	e8 58 fe ff ff       	call   0x8320
    84c8:	83 c4 08             	add    $0x8,%esp
    84cb:	68 d5 03 00 00       	push   $0x3d5
    84d0:	e8 2e fe ff ff       	call   0x8303
    84d5:	83 c4 04             	add    $0x4,%esp
    84d8:	83 e0 c0             	and    $0xffffffc0,%eax
    84db:	89 c2                	mov    %eax,%edx
    84dd:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
    84e1:	09 d0                	or     %edx,%eax
    84e3:	0f b6 c0             	movzbl %al,%eax
    84e6:	50                   	push   %eax
    84e7:	68 d5 03 00 00       	push   $0x3d5
    84ec:	e8 2f fe ff ff       	call   0x8320
    84f1:	83 c4 08             	add    $0x8,%esp
    84f4:	6a 0b                	push   $0xb
    84f6:	68 d4 03 00 00       	push   $0x3d4
    84fb:	e8 20 fe ff ff       	call   0x8320
    8500:	83 c4 08             	add    $0x8,%esp
    8503:	68 d5 03 00 00       	push   $0x3d5
    8508:	e8 f6 fd ff ff       	call   0x8303
    850d:	83 c4 04             	add    $0x4,%esp
    8510:	83 e0 e0             	and    $0xffffffe0,%eax
    8513:	89 c2                	mov    %eax,%edx
    8515:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
    8519:	09 d0                	or     %edx,%eax
    851b:	0f b6 c0             	movzbl %al,%eax
    851e:	50                   	push   %eax
    851f:	68 d5 03 00 00       	push   $0x3d5
    8524:	e8 f7 fd ff ff       	call   0x8320
    8529:	83 c4 08             	add    $0x8,%esp
    852c:	90                   	nop
    852d:	c9                   	leave  
    852e:	c3                   	ret    
    852f:	55                   	push   %ebp
    8530:	89 e5                	mov    %esp,%ebp
    8532:	83 ec 14             	sub    $0x14,%esp
    8535:	8b 45 08             	mov    0x8(%ebp),%eax
    8538:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    853c:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
    8540:	89 c2                	mov    %eax,%edx
    8542:	ec                   	in     (%dx),%al
    8543:	88 45 ff             	mov    %al,-0x1(%ebp)
    8546:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
    854a:	c9                   	leave  
    854b:	c3                   	ret    
    854c:	55                   	push   %ebp
    854d:	89 e5                	mov    %esp,%ebp
    854f:	57                   	push   %edi
    8550:	53                   	push   %ebx
    8551:	8b 55 08             	mov    0x8(%ebp),%edx
    8554:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    8557:	8b 45 10             	mov    0x10(%ebp),%eax
    855a:	89 cb                	mov    %ecx,%ebx
    855c:	89 df                	mov    %ebx,%edi
    855e:	89 c1                	mov    %eax,%ecx
    8560:	fc                   	cld    
    8561:	66 f3 6d             	rep insw (%dx),%es:(%edi)
    8564:	89 c8                	mov    %ecx,%eax
    8566:	89 fb                	mov    %edi,%ebx
    8568:	89 5d 0c             	mov    %ebx,0xc(%ebp)
    856b:	89 45 10             	mov    %eax,0x10(%ebp)
    856e:	90                   	nop
    856f:	5b                   	pop    %ebx
    8570:	5f                   	pop    %edi
    8571:	5d                   	pop    %ebp
    8572:	c3                   	ret    
    8573:	55                   	push   %ebp
    8574:	89 e5                	mov    %esp,%ebp
    8576:	83 ec 08             	sub    $0x8,%esp
    8579:	8b 45 08             	mov    0x8(%ebp),%eax
    857c:	8b 55 0c             	mov    0xc(%ebp),%edx
    857f:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
    8583:	89 d0                	mov    %edx,%eax
    8585:	88 45 f8             	mov    %al,-0x8(%ebp)
    8588:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
    858c:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
    8590:	ee                   	out    %al,(%dx)
    8591:	90                   	nop
    8592:	c9                   	leave  
    8593:	c3                   	ret    
    8594:	55                   	push   %ebp
    8595:	89 e5                	mov    %esp,%ebp
    8597:	83 ec 18             	sub    $0x18,%esp
    859a:	83 ec 0c             	sub    $0xc,%esp
    859d:	68 87 8a 00 00       	push   $0x8a87
    85a2:	e8 8b fe ff ff       	call   0x8432
    85a7:	83 c4 10             	add    $0x10,%esp
    85aa:	8b 45 0c             	mov    0xc(%ebp),%eax
    85ad:	83 ec 04             	sub    $0x4,%esp
    85b0:	6a 0a                	push   $0xa
    85b2:	8d 55 ee             	lea    -0x12(%ebp),%edx
    85b5:	52                   	push   %edx
    85b6:	50                   	push   %eax
    85b7:	e8 74 fa ff ff       	call   0x8030
    85bc:	83 c4 10             	add    $0x10,%esp
    85bf:	83 ec 0c             	sub    $0xc,%esp
    85c2:	8d 45 ee             	lea    -0x12(%ebp),%eax
    85c5:	50                   	push   %eax
    85c6:	e8 b8 fe ff ff       	call   0x8483
    85cb:	83 c4 10             	add    $0x10,%esp
    85ce:	e8 ac 00 00 00       	call   0x867f
    85d3:	8b 45 0c             	mov    0xc(%ebp),%eax
    85d6:	c1 e8 18             	shr    $0x18,%eax
    85d9:	83 c8 e0             	or     $0xffffffe0,%eax
    85dc:	0f b6 c0             	movzbl %al,%eax
    85df:	83 ec 08             	sub    $0x8,%esp
    85e2:	50                   	push   %eax
    85e3:	68 f6 01 00 00       	push   $0x1f6
    85e8:	e8 86 ff ff ff       	call   0x8573
    85ed:	83 c4 10             	add    $0x10,%esp
    85f0:	83 ec 08             	sub    $0x8,%esp
    85f3:	6a 01                	push   $0x1
    85f5:	68 f2 01 00 00       	push   $0x1f2
    85fa:	e8 74 ff ff ff       	call   0x8573
    85ff:	83 c4 10             	add    $0x10,%esp
    8602:	8b 45 0c             	mov    0xc(%ebp),%eax
    8605:	0f b6 c0             	movzbl %al,%eax
    8608:	83 ec 08             	sub    $0x8,%esp
    860b:	50                   	push   %eax
    860c:	68 f3 01 00 00       	push   $0x1f3
    8611:	e8 5d ff ff ff       	call   0x8573
    8616:	83 c4 10             	add    $0x10,%esp
    8619:	8b 45 0c             	mov    0xc(%ebp),%eax
    861c:	c1 e8 08             	shr    $0x8,%eax
    861f:	0f b6 c0             	movzbl %al,%eax
    8622:	83 ec 08             	sub    $0x8,%esp
    8625:	50                   	push   %eax
    8626:	68 f4 01 00 00       	push   $0x1f4
    862b:	e8 43 ff ff ff       	call   0x8573
    8630:	83 c4 10             	add    $0x10,%esp
    8633:	8b 45 0c             	mov    0xc(%ebp),%eax
    8636:	c1 e8 10             	shr    $0x10,%eax
    8639:	0f b6 c0             	movzbl %al,%eax
    863c:	83 ec 08             	sub    $0x8,%esp
    863f:	50                   	push   %eax
    8640:	68 f5 01 00 00       	push   $0x1f5
    8645:	e8 29 ff ff ff       	call   0x8573
    864a:	83 c4 10             	add    $0x10,%esp
    864d:	83 ec 08             	sub    $0x8,%esp
    8650:	6a 20                	push   $0x20
    8652:	68 f7 01 00 00       	push   $0x1f7
    8657:	e8 17 ff ff ff       	call   0x8573
    865c:	83 c4 10             	add    $0x10,%esp
    865f:	e8 1b 00 00 00       	call   0x867f
    8664:	83 ec 04             	sub    $0x4,%esp
    8667:	68 00 01 00 00       	push   $0x100
    866c:	ff 75 08             	pushl  0x8(%ebp)
    866f:	68 f0 01 00 00       	push   $0x1f0
    8674:	e8 d3 fe ff ff       	call   0x854c
    8679:	83 c4 10             	add    $0x10,%esp
    867c:	90                   	nop
    867d:	c9                   	leave  
    867e:	c3                   	ret    
    867f:	55                   	push   %ebp
    8680:	89 e5                	mov    %esp,%ebp
    8682:	90                   	nop
    8683:	68 f7 01 00 00       	push   $0x1f7
    8688:	e8 a2 fe ff ff       	call   0x852f
    868d:	83 c4 04             	add    $0x4,%esp
    8690:	0f b6 c0             	movzbl %al,%eax
    8693:	25 c0 00 00 00       	and    $0xc0,%eax
    8698:	83 f8 40             	cmp    $0x40,%eax
    869b:	75 e6                	jne    0x8683
    869d:	90                   	nop
    869e:	90                   	nop
    869f:	c9                   	leave  
    86a0:	c3                   	ret    
    86a1:	55                   	push   %ebp
    86a2:	89 e5                	mov    %esp,%ebp
    86a4:	83 ec 18             	sub    $0x18,%esp
    86a7:	8b 55 08             	mov    0x8(%ebp),%edx
    86aa:	8b 45 0c             	mov    0xc(%ebp),%eax
    86ad:	01 d0                	add    %edx,%eax
    86af:	89 45 f0             	mov    %eax,-0x10(%ebp)
    86b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
    86b5:	05 ff 01 00 00       	add    $0x1ff,%eax
    86ba:	25 00 fe ff ff       	and    $0xfffffe00,%eax
    86bf:	01 45 f0             	add    %eax,-0x10(%ebp)
    86c2:	8b 45 10             	mov    0x10(%ebp),%eax
    86c5:	05 00 10 00 00       	add    $0x1000,%eax
    86ca:	c1 e8 09             	shr    $0x9,%eax
    86cd:	89 45 f4             	mov    %eax,-0xc(%ebp)
    86d0:	eb 1c                	jmp    0x86ee
    86d2:	83 ec 08             	sub    $0x8,%esp
    86d5:	ff 75 f4             	pushl  -0xc(%ebp)
    86d8:	ff 75 08             	pushl  0x8(%ebp)
    86db:	e8 b4 fe ff ff       	call   0x8594
    86e0:	83 c4 10             	add    $0x10,%esp
    86e3:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
    86ea:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    86ee:	8b 45 08             	mov    0x8(%ebp),%eax
    86f1:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    86f4:	72 dc                	jb     0x86d2
    86f6:	90                   	nop
    86f7:	90                   	nop
    86f8:	c9                   	leave  
    86f9:	c3                   	ret    
    86fa:	00 00                	add    %al,(%eax)
    86fc:	14 00                	adc    $0x0,%al
    86fe:	00 00                	add    %al,(%eax)
    8700:	00 00                	add    %al,(%eax)
    8702:	00 00                	add    %al,(%eax)
    8704:	01 7a 52             	add    %edi,0x52(%edx)
    8707:	00 01                	add    %al,(%ecx)
    8709:	7c 08                	jl     0x8713
    870b:	01 1b                	add    %ebx,(%ebx)
    870d:	0c 04                	or     $0x4,%al
    870f:	04 88                	add    $0x88,%al
    8711:	01 00                	add    %eax,(%eax)
    8713:	00 1c 00             	add    %bl,(%eax,%eax,1)
    8716:	00 00                	add    %al,(%eax)
    8718:	1c 00                	sbb    $0x0,%al
    871a:	00 00                	add    %al,(%eax)
    871c:	14 f9                	adc    $0xf9,%al
    871e:	ff                   	(bad)  
    871f:	ff d3                	call   *%ebx
    8721:	00 00                	add    %al,(%eax)
    8723:	00 00                	add    %al,(%eax)
    8725:	41                   	inc    %ecx
    8726:	0e                   	push   %cs
    8727:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    872d:	02 cf                	add    %bh,%cl
    872f:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8732:	04 00                	add    $0x0,%al
    8734:	1c 00                	sbb    $0x0,%al
    8736:	00 00                	add    %al,(%eax)
    8738:	3c 00                	cmp    $0x0,%al
    873a:	00 00                	add    %al,(%eax)
    873c:	c7                   	(bad)  
    873d:	f9                   	stc    
    873e:	ff                   	(bad)  
    873f:	ff 73 00             	pushl  0x0(%ebx)
    8742:	00 00                	add    %al,(%eax)
    8744:	00 41 0e             	add    %al,0xe(%ecx)
    8747:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    874d:	02 6f c5             	add    -0x3b(%edi),%ch
    8750:	0c 04                	or     $0x4,%al
    8752:	04 00                	add    $0x0,%al
    8754:	1c 00                	sbb    $0x0,%al
    8756:	00 00                	add    %al,(%eax)
    8758:	5c                   	pop    %esp
    8759:	00 00                	add    %al,(%eax)
    875b:	00 1a                	add    %bl,(%edx)
    875d:	fa                   	cli    
    875e:	ff                   	(bad)  
    875f:	ff 24 00             	jmp    *(%eax,%eax,1)
    8762:	00 00                	add    %al,(%eax)
    8764:	00 41 0e             	add    %al,0xe(%ecx)
    8767:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    876d:	60                   	pusha  
    876e:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8771:	04 00                	add    $0x0,%al
    8773:	00 14 00             	add    %dl,(%eax,%eax,1)
    8776:	00 00                	add    %al,(%eax)
    8778:	00 00                	add    %al,(%eax)
    877a:	00 00                	add    %al,(%eax)
    877c:	01 7a 52             	add    %edi,0x52(%edx)
    877f:	00 01                	add    %al,(%ecx)
    8781:	7c 08                	jl     0x878b
    8783:	01 1b                	add    %ebx,(%ebx)
    8785:	0c 04                	or     $0x4,%al
    8787:	04 88                	add    $0x88,%al
    8789:	01 00                	add    %eax,(%eax)
    878b:	00 24 00             	add    %ah,(%eax,%eax,1)
    878e:	00 00                	add    %al,(%eax)
    8790:	1c 00                	sbb    $0x0,%al
    8792:	00 00                	add    %al,(%eax)
    8794:	76 f8                	jbe    0x878e
    8796:	ff                   	(bad)  
    8797:	ff 26                	jmp    *(%esi)
    8799:	00 00                	add    %al,(%eax)
    879b:	00 00                	add    %al,(%eax)
    879d:	41                   	inc    %ecx
    879e:	0e                   	push   %cs
    879f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    87a5:	42                   	inc    %edx
    87a6:	87 03                	xchg   %eax,(%ebx)
    87a8:	83 04 5e c3          	addl   $0xffffffc3,(%esi,%ebx,2)
    87ac:	41                   	inc    %ecx
    87ad:	c7 41 c5 0c 04 04 00 	movl   $0x4040c,-0x3b(%ecx)
    87b4:	1c 00                	sbb    $0x0,%al
    87b6:	00 00                	add    %al,(%eax)
    87b8:	44                   	inc    %esp
    87b9:	00 00                	add    %al,(%eax)
    87bb:	00 de                	add    %bl,%dh
    87bd:	f9                   	stc    
    87be:	ff                   	(bad)  
    87bf:	ff 35 01 00 00 00    	pushl  0x1
    87c5:	41                   	inc    %ecx
    87c6:	0e                   	push   %cs
    87c7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    87cd:	03 31                	add    (%ecx),%esi
    87cf:	01 c5                	add    %eax,%ebp
    87d1:	0c 04                	or     $0x4,%al
    87d3:	04 18                	add    $0x18,%al
    87d5:	00 00                	add    %al,(%eax)
    87d7:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
    87db:	00 f3                	add    %dh,%bl
    87dd:	fa                   	cli    
    87de:	ff                   	(bad)  
    87df:	ff 34 00             	pushl  (%eax,%eax,1)
    87e2:	00 00                	add    %al,(%eax)
    87e4:	00 41 0e             	add    %al,0xe(%ecx)
    87e7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    87ed:	00 00                	add    %al,(%eax)
    87ef:	00 14 00             	add    %dl,(%eax,%eax,1)
    87f2:	00 00                	add    %al,(%eax)
    87f4:	00 00                	add    %al,(%eax)
    87f6:	00 00                	add    %al,(%eax)
    87f8:	01 7a 52             	add    %edi,0x52(%edx)
    87fb:	00 01                	add    %al,(%ecx)
    87fd:	7c 08                	jl     0x8807
    87ff:	01 1b                	add    %ebx,(%ebx)
    8801:	0c 04                	or     $0x4,%al
    8803:	04 88                	add    $0x88,%al
    8805:	01 00                	add    %eax,(%eax)
    8807:	00 1c 00             	add    %bl,(%eax,%eax,1)
    880a:	00 00                	add    %al,(%eax)
    880c:	1c 00                	sbb    $0x0,%al
    880e:	00 00                	add    %al,(%eax)
    8810:	f3 fa                	repz cli 
    8812:	ff                   	(bad)  
    8813:	ff 1d 00 00 00 00    	lcall  *0x0
    8819:	41                   	inc    %ecx
    881a:	0e                   	push   %cs
    881b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8821:	59                   	pop    %ecx
    8822:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8825:	04 00                	add    $0x0,%al
    8827:	00 1c 00             	add    %bl,(%eax,%eax,1)
    882a:	00 00                	add    %al,(%eax)
    882c:	3c 00                	cmp    $0x0,%al
    882e:	00 00                	add    %al,(%eax)
    8830:	f0 fa                	lock cli 
    8832:	ff                   	(bad)  
    8833:	ff 21                	jmp    *(%ecx)
    8835:	00 00                	add    %al,(%eax)
    8837:	00 00                	add    %al,(%eax)
    8839:	41                   	inc    %ecx
    883a:	0e                   	push   %cs
    883b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8841:	5d                   	pop    %ebp
    8842:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8845:	04 00                	add    $0x0,%al
    8847:	00 1c 00             	add    %bl,(%eax,%eax,1)
    884a:	00 00                	add    %al,(%eax)
    884c:	5c                   	pop    %esp
    884d:	00 00                	add    %al,(%eax)
    884f:	00 f1                	add    %dh,%cl
    8851:	fa                   	cli    
    8852:	ff                   	(bad)  
    8853:	ff 0e                	decl   (%esi)
    8855:	00 00                	add    %al,(%eax)
    8857:	00 00                	add    %al,(%eax)
    8859:	41                   	inc    %ecx
    885a:	0e                   	push   %cs
    885b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8861:	4a                   	dec    %edx
    8862:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8865:	04 00                	add    $0x0,%al
    8867:	00 20                	add    %ah,(%eax)
    8869:	00 00                	add    %al,(%eax)
    886b:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
    886f:	00 df                	add    %bl,%bh
    8871:	fa                   	cli    
    8872:	ff                   	(bad)  
    8873:	ff 75 00             	pushl  0x0(%ebp)
    8876:	00 00                	add    %al,(%eax)
    8878:	00 41 0e             	add    %al,0xe(%ecx)
    887b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8881:	44                   	inc    %esp
    8882:	83 03 02             	addl   $0x2,(%ebx)
    8885:	6c                   	insb   (%dx),%es:(%edi)
    8886:	c3                   	ret    
    8887:	41                   	inc    %ecx
    8888:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    888b:	04 1c                	add    $0x1c,%al
    888d:	00 00                	add    %al,(%eax)
    888f:	00 a0 00 00 00 30    	add    %ah,0x30000000(%eax)
    8895:	fb                   	sti    
    8896:	ff                   	(bad)  
    8897:	ff 57 00             	call   *0x0(%edi)
    889a:	00 00                	add    %al,(%eax)
    889c:	00 41 0e             	add    %al,0xe(%ecx)
    889f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    88a5:	02 53 c5             	add    -0x3b(%ebx),%dl
    88a8:	0c 04                	or     $0x4,%al
    88aa:	04 00                	add    $0x0,%al
    88ac:	1c 00                	sbb    $0x0,%al
    88ae:	00 00                	add    %al,(%eax)
    88b0:	c0 00 00             	rolb   $0x0,(%eax)
    88b3:	00 67 fb             	add    %ah,-0x5(%edi)
    88b6:	ff                   	(bad)  
    88b7:	ff 17                	call   *(%edi)
    88b9:	00 00                	add    %al,(%eax)
    88bb:	00 00                	add    %al,(%eax)
    88bd:	41                   	inc    %ecx
    88be:	0e                   	push   %cs
    88bf:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    88c5:	53                   	push   %ebx
    88c6:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    88c9:	04 00                	add    $0x0,%al
    88cb:	00 20                	add    %ah,(%eax)
    88cd:	00 00                	add    %al,(%eax)
    88cf:	00 e0                	add    %ah,%al
    88d1:	00 00                	add    %al,(%eax)
    88d3:	00 5e fb             	add    %bl,-0x5(%esi)
    88d6:	ff                   	(bad)  
    88d7:	ff 51 00             	call   *0x0(%ecx)
    88da:	00 00                	add    %al,(%eax)
    88dc:	00 41 0e             	add    %al,0xe(%ecx)
    88df:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    88e5:	44                   	inc    %esp
    88e6:	83 03 02             	addl   $0x2,(%ebx)
    88e9:	49                   	dec    %ecx
    88ea:	c5 c3 0c             	(bad)  
    88ed:	04 04                	add    $0x4,%al
    88ef:	00 1c 00             	add    %bl,(%eax,%eax,1)
    88f2:	00 00                	add    %al,(%eax)
    88f4:	04 01                	add    $0x1,%al
    88f6:	00 00                	add    %al,(%eax)
    88f8:	8b fb                	mov    %ebx,%edi
    88fa:	ff                   	(bad)  
    88fb:	ff 27                	jmp    *(%edi)
    88fd:	00 00                	add    %al,(%eax)
    88ff:	00 00                	add    %al,(%eax)
    8901:	41                   	inc    %ecx
    8902:	0e                   	push   %cs
    8903:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8909:	63 c5                	arpl   %ax,%bp
    890b:	0c 04                	or     $0x4,%al
    890d:	04 00                	add    $0x0,%al
    890f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    8912:	00 00                	add    %al,(%eax)
    8914:	24 01                	and    $0x1,%al
    8916:	00 00                	add    %al,(%eax)
    8918:	92                   	xchg   %eax,%edx
    8919:	fb                   	sti    
    891a:	ff                   	(bad)  
    891b:	ff 85 00 00 00 00    	incl   0x0(%ebp)
    8921:	41                   	inc    %ecx
    8922:	0e                   	push   %cs
    8923:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8929:	02 81 c5 0c 04 04    	add    0x4040cc5(%ecx),%al
    892f:	00 14 00             	add    %dl,(%eax,%eax,1)
    8932:	00 00                	add    %al,(%eax)
    8934:	00 00                	add    %al,(%eax)
    8936:	00 00                	add    %al,(%eax)
    8938:	01 7a 52             	add    %edi,0x52(%edx)
    893b:	00 01                	add    %al,(%ecx)
    893d:	7c 08                	jl     0x8947
    893f:	01 1b                	add    %ebx,(%ebx)
    8941:	0c 04                	or     $0x4,%al
    8943:	04 88                	add    $0x88,%al
    8945:	01 00                	add    %eax,(%eax)
    8947:	00 1c 00             	add    %bl,(%eax,%eax,1)
    894a:	00 00                	add    %al,(%eax)
    894c:	1c 00                	sbb    $0x0,%al
    894e:	00 00                	add    %al,(%eax)
    8950:	df fb                	(bad)  
    8952:	ff                   	(bad)  
    8953:	ff 1d 00 00 00 00    	lcall  *0x0
    8959:	41                   	inc    %ecx
    895a:	0e                   	push   %cs
    895b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8961:	59                   	pop    %ecx
    8962:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8965:	04 00                	add    $0x0,%al
    8967:	00 24 00             	add    %ah,(%eax,%eax,1)
    896a:	00 00                	add    %al,(%eax)
    896c:	3c 00                	cmp    $0x0,%al
    896e:	00 00                	add    %al,(%eax)
    8970:	dc fb                	fdivr  %st,%st(3)
    8972:	ff                   	(bad)  
    8973:	ff 27                	jmp    *(%edi)
    8975:	00 00                	add    %al,(%eax)
    8977:	00 00                	add    %al,(%eax)
    8979:	41                   	inc    %ecx
    897a:	0e                   	push   %cs
    897b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8981:	42                   	inc    %edx
    8982:	87 03                	xchg   %eax,(%ebx)
    8984:	83 04 5f c3          	addl   $0xffffffc3,(%edi,%ebx,2)
    8988:	41                   	inc    %ecx
    8989:	c7 41 c5 0c 04 04 00 	movl   $0x4040c,-0x3b(%ecx)
    8990:	1c 00                	sbb    $0x0,%al
    8992:	00 00                	add    %al,(%eax)
    8994:	64 00 00             	add    %al,%fs:(%eax)
    8997:	00 db                	add    %bl,%bl
    8999:	fb                   	sti    
    899a:	ff                   	(bad)  
    899b:	ff 21                	jmp    *(%ecx)
    899d:	00 00                	add    %al,(%eax)
    899f:	00 00                	add    %al,(%eax)
    89a1:	41                   	inc    %ecx
    89a2:	0e                   	push   %cs
    89a3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    89a9:	5d                   	pop    %ebp
    89aa:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    89ad:	04 00                	add    $0x0,%al
    89af:	00 1c 00             	add    %bl,(%eax,%eax,1)
    89b2:	00 00                	add    %al,(%eax)
    89b4:	84 00                	test   %al,(%eax)
    89b6:	00 00                	add    %al,(%eax)
    89b8:	dc fb                	fdivr  %st,%st(3)
    89ba:	ff                   	(bad)  
    89bb:	ff                   	(bad)  
    89bc:	eb 00                	jmp    0x89be
    89be:	00 00                	add    %al,(%eax)
    89c0:	00 41 0e             	add    %al,0xe(%ecx)
    89c3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    89c9:	02 e7                	add    %bh,%ah
    89cb:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    89ce:	04 00                	add    $0x0,%al
    89d0:	1c 00                	sbb    $0x0,%al
    89d2:	00 00                	add    %al,(%eax)
    89d4:	a4                   	movsb  %ds:(%esi),%es:(%edi)
    89d5:	00 00                	add    %al,(%eax)
    89d7:	00 a7 fc ff ff 22    	add    %ah,0x22fffffc(%edi)
    89dd:	00 00                	add    %al,(%eax)
    89df:	00 00                	add    %al,(%eax)
    89e1:	41                   	inc    %ecx
    89e2:	0e                   	push   %cs
    89e3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    89e9:	5e                   	pop    %esi
    89ea:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    89ed:	04 00                	add    $0x0,%al
    89ef:	00 1c 00             	add    %bl,(%eax,%eax,1)
    89f2:	00 00                	add    %al,(%eax)
    89f4:	c4 00                	les    (%eax),%eax
    89f6:	00 00                	add    %al,(%eax)
    89f8:	a9 fc ff ff 59       	test   $0x59fffffc,%eax
    89fd:	00 00                	add    %al,(%eax)
    89ff:	00 00                	add    %al,(%eax)
    8a01:	41                   	inc    %ecx
    8a02:	0e                   	push   %cs
    8a03:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8a09:	02 55 c5             	add    -0x3b(%ebp),%dl
    8a0c:	0c 04                	or     $0x4,%al
    8a0e:	04 00                	add    $0x0,%al
    8a10:	4c                   	dec    %esp
    8a11:	6f                   	outsl  %ds:(%esi),(%dx)
    8a12:	61                   	popa   
    8a13:	64 69 6e 67 20 74 68 	imul   $0x65687420,%fs:0x67(%esi),%ebp
    8a1a:	65 
    8a1b:	20 70 72             	and    %dh,0x72(%eax)
    8a1e:	6f                   	outsl  %ds:(%esi),(%dx)
    8a1f:	67 72 61             	addr16 jb 0x8a83
    8a22:	6d                   	insl   (%dx),%es:(%edi)
    8a23:	20 73 65             	and    %dh,0x65(%ebx)
    8a26:	67 6d                	insl   (%dx),%es:(%di)
    8a28:	65 6e                	outsb  %gs:(%esi),(%dx)
    8a2a:	74 73                	je     0x8a9f
    8a2c:	00 68 65             	add    %ch,0x65(%eax)
    8a2f:	72 65                	jb     0x8a96
    8a31:	00 45 6e             	add    %al,0x6e(%ebp)
    8a34:	74 65                	je     0x8a9b
    8a36:	72 69                	jb     0x8aa1
    8a38:	6e                   	outsb  %ds:(%esi),(%dx)
    8a39:	67 20 6b 65          	and    %ch,0x65(%bp,%di)
    8a3d:	72 6e                	jb     0x8aad
    8a3f:	65 6c                	gs insb (%dx),%es:(%edi)
    8a41:	00 00                	add    %al,(%eax)
    8a43:	00 45 72             	add    %al,0x72(%ebp)
    8a46:	72 6f                	jb     0x8ab7
    8a48:	72 3a                	jb     0x8a84
    8a4a:	20 6d 61             	and    %ch,0x61(%ebp)
    8a4d:	67 69 63 20 6e 75 6d 	imul   $0x626d756e,0x20(%bp,%di),%esp
    8a54:	62 
    8a55:	65 72 20             	gs jb  0x8a78
    8a58:	6e                   	outsb  %ds:(%esi),(%dx)
    8a59:	6f                   	outsl  %ds:(%esi),(%dx)
    8a5a:	74 20                	je     0x8a7c
    8a5c:	64 65 74 65          	fs gs je 0x8ac5
    8a60:	63 74 65 64          	arpl   %si,0x64(%ebp,%eiz,2)
    8a64:	20 69 6e             	and    %ch,0x6e(%ecx)
    8a67:	20 6b 65             	and    %ch,0x65(%ebx)
    8a6a:	72 6e                	jb     0x8ada
    8a6c:	65 6c                	gs insb (%dx),%es:(%edi)
    8a6e:	00 45 72             	add    %al,0x72(%ebp)
    8a71:	72 6f                	jb     0x8ae2
    8a73:	72 3a                	jb     0x8aaf
    8a75:	20 65 6e             	and    %ah,0x6e(%ebp)
    8a78:	74 72                	je     0x8aec
    8a7a:	79 20                	jns    0x8a9c
    8a7c:	72 65                	jb     0x8ae3
    8a7e:	74 75                	je     0x8af5
    8a80:	72 6e                	jb     0x8af0
    8a82:	65 64 00 20          	gs add %ah,%fs:(%eax)
    8a86:	00 52 65             	add    %dl,0x65(%edx)
    8a89:	61                   	popa   
    8a8a:	64 69 6e 67 20 4c 42 	imul   $0x41424c20,%fs:0x67(%esi),%ebp
    8a91:	41 
    8a92:	20 00                	and    %al,(%eax)
    8a94:	00 80 0b 00 07 00    	add    %al,0x7000b(%eax)
	...
