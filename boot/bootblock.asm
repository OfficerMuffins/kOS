
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
    81a0:	e8 89 01 00 00       	call   0x832e
    81a5:	83 ec 0c             	sub    $0xc,%esp
    81a8:	68 a0 8a 00 00       	push   $0x8aa0
    81ad:	e8 be 02 00 00       	call   0x8470
    81b2:	83 c4 10             	add    $0x10,%esp
    81b5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    81bc:	83 ec 04             	sub    $0x4,%esp
    81bf:	6a 00                	push   $0x0
    81c1:	68 00 10 00 00       	push   $0x1000
    81c6:	ff 75 f0             	pushl  -0x10(%ebp)
    81c9:	e8 8c 04 00 00       	call   0x865a
    81ce:	83 c4 10             	add    $0x10,%esp
    81d1:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81d4:	8b 00                	mov    (%eax),%eax
    81d6:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
    81db:	74 0d                	je     0x81ea
    81dd:	83 ec 0c             	sub    $0xc,%esp
    81e0:	6a ff                	push   $0xffffffff
    81e2:	e8 d5 00 00 00       	call   0x82bc
    81e7:	83 c4 10             	add    $0x10,%esp
    81ea:	83 ec 0c             	sub    $0xc,%esp
    81ed:	68 b2 8a 00 00       	push   $0x8ab2
    81f2:	e8 79 02 00 00       	call   0x8470
    81f7:	83 c4 10             	add    $0x10,%esp
    81fa:	8b 45 f0             	mov    -0x10(%ebp),%eax
    81fd:	8b 50 1c             	mov    0x1c(%eax),%edx
    8200:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8203:	01 d0                	add    %edx,%eax
    8205:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8208:	8b 45 f0             	mov    -0x10(%ebp),%eax
    820b:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
    820f:	0f b7 c0             	movzwl %ax,%eax
    8212:	c1 e0 05             	shl    $0x5,%eax
    8215:	89 c2                	mov    %eax,%edx
    8217:	8b 45 f4             	mov    -0xc(%ebp),%eax
    821a:	01 d0                	add    %edx,%eax
    821c:	89 45 ec             	mov    %eax,-0x14(%ebp)
    821f:	eb 65                	jmp    0x8286
    8221:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8224:	8b 40 0c             	mov    0xc(%eax),%eax
    8227:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    822a:	8b 45 f4             	mov    -0xc(%ebp),%eax
    822d:	8b 50 04             	mov    0x4(%eax),%edx
    8230:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8233:	8b 40 10             	mov    0x10(%eax),%eax
    8236:	83 ec 04             	sub    $0x4,%esp
    8239:	52                   	push   %edx
    823a:	50                   	push   %eax
    823b:	ff 75 e4             	pushl  -0x1c(%ebp)
    823e:	e8 17 04 00 00       	call   0x865a
    8243:	83 c4 10             	add    $0x10,%esp
    8246:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8249:	8b 50 14             	mov    0x14(%eax),%edx
    824c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    824f:	8b 40 10             	mov    0x10(%eax),%eax
    8252:	39 c2                	cmp    %eax,%edx
    8254:	76 2c                	jbe    0x8282
    8256:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8259:	8b 50 14             	mov    0x14(%eax),%edx
    825c:	8b 45 f4             	mov    -0xc(%ebp),%eax
    825f:	8b 40 10             	mov    0x10(%eax),%eax
    8262:	29 c2                	sub    %eax,%edx
    8264:	89 d0                	mov    %edx,%eax
    8266:	89 c1                	mov    %eax,%ecx
    8268:	8b 45 f4             	mov    -0xc(%ebp),%eax
    826b:	8b 50 10             	mov    0x10(%eax),%edx
    826e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    8271:	01 d0                	add    %edx,%eax
    8273:	83 ec 04             	sub    $0x4,%esp
    8276:	51                   	push   %ecx
    8277:	6a 00                	push   $0x0
    8279:	50                   	push   %eax
    827a:	e8 8b fd ff ff       	call   0x800a
    827f:	83 c4 10             	add    $0x10,%esp
    8282:	83 45 f4 20          	addl   $0x20,-0xc(%ebp)
    8286:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8289:	3b 45 ec             	cmp    -0x14(%ebp),%eax
    828c:	72 93                	jb     0x8221
    828e:	8b 45 f0             	mov    -0x10(%ebp),%eax
    8291:	8b 40 18             	mov    0x18(%eax),%eax
    8294:	89 45 e8             	mov    %eax,-0x18(%ebp)
    8297:	83 ec 0c             	sub    $0xc,%esp
    829a:	68 cf 8a 00 00       	push   $0x8acf
    829f:	e8 cc 01 00 00       	call   0x8470
    82a4:	83 c4 10             	add    $0x10,%esp
    82a7:	8b 45 e8             	mov    -0x18(%ebp),%eax
    82aa:	ff d0                	call   *%eax
    82ac:	83 ec 0c             	sub    $0xc,%esp
    82af:	6a fe                	push   $0xfffffffe
    82b1:	e8 06 00 00 00       	call   0x82bc
    82b6:	83 c4 10             	add    $0x10,%esp
    82b9:	90                   	nop
    82ba:	c9                   	leave  
    82bb:	c3                   	ret    
    82bc:	55                   	push   %ebp
    82bd:	89 e5                	mov    %esp,%ebp
    82bf:	83 ec 08             	sub    $0x8,%esp
    82c2:	83 7d 08 ff          	cmpl   $0xffffffff,0x8(%ebp)
    82c6:	75 10                	jne    0x82d8
    82c8:	83 ec 0c             	sub    $0xc,%esp
    82cb:	68 e0 8a 00 00       	push   $0x8ae0
    82d0:	e8 9b 01 00 00       	call   0x8470
    82d5:	83 c4 10             	add    $0x10,%esp
    82d8:	83 7d 08 fe          	cmpl   $0xfffffffe,0x8(%ebp)
    82dc:	75 10                	jne    0x82ee
    82de:	83 ec 0c             	sub    $0xc,%esp
    82e1:	68 0b 8b 00 00       	push   $0x8b0b
    82e6:	e8 85 01 00 00       	call   0x8470
    82eb:	83 c4 10             	add    $0x10,%esp
    82ee:	eb fe                	jmp    0x82ee
    82f0:	55                   	push   %ebp
    82f1:	89 e5                	mov    %esp,%ebp
    82f3:	83 ec 14             	sub    $0x14,%esp
    82f6:	8b 45 08             	mov    0x8(%ebp),%eax
    82f9:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    82fd:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
    8301:	89 c2                	mov    %eax,%edx
    8303:	ec                   	in     (%dx),%al
    8304:	88 45 ff             	mov    %al,-0x1(%ebp)
    8307:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
    830b:	c9                   	leave  
    830c:	c3                   	ret    
    830d:	55                   	push   %ebp
    830e:	89 e5                	mov    %esp,%ebp
    8310:	83 ec 08             	sub    $0x8,%esp
    8313:	8b 45 08             	mov    0x8(%ebp),%eax
    8316:	8b 55 0c             	mov    0xc(%ebp),%edx
    8319:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
    831d:	89 d0                	mov    %edx,%eax
    831f:	88 45 f8             	mov    %al,-0x8(%ebp)
    8322:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
    8326:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
    832a:	ee                   	out    %al,(%dx)
    832b:	90                   	nop
    832c:	c9                   	leave  
    832d:	c3                   	ret    
    832e:	55                   	push   %ebp
    832f:	89 e5                	mov    %esp,%ebp
    8331:	83 ec 08             	sub    $0x8,%esp
    8334:	e8 78 00 00 00       	call   0x83b1
    8339:	90                   	nop
    833a:	c9                   	leave  
    833b:	c3                   	ret    
    833c:	55                   	push   %ebp
    833d:	89 e5                	mov    %esp,%ebp
    833f:	53                   	push   %ebx
    8340:	83 ec 10             	sub    $0x10,%esp
    8343:	8b 45 10             	mov    0x10(%ebp),%eax
    8346:	c1 e0 04             	shl    $0x4,%eax
    8349:	89 c2                	mov    %eax,%edx
    834b:	8b 45 0c             	mov    0xc(%ebp),%eax
    834e:	83 e0 0f             	and    $0xf,%eax
    8351:	09 d0                	or     %edx,%eax
    8353:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
    8357:	8b 45 08             	mov    0x8(%ebp),%eax
    835a:	0f b6 00             	movzbl (%eax),%eax
    835d:	66 98                	cbtw   
    835f:	0f b7 55 fa          	movzwl -0x6(%ebp),%edx
    8363:	c1 e2 08             	shl    $0x8,%edx
    8366:	09 d0                	or     %edx,%eax
    8368:	89 c3                	mov    %eax,%ebx
    836a:	8b 0d 4c 8b 00 00    	mov    0x8b4c,%ecx
    8370:	0f b6 05 53 8b 00 00 	movzbl 0x8b53,%eax
    8377:	0f b6 d0             	movzbl %al,%edx
    837a:	89 d0                	mov    %edx,%eax
    837c:	c1 e0 02             	shl    $0x2,%eax
    837f:	01 d0                	add    %edx,%eax
    8381:	c1 e0 04             	shl    $0x4,%eax
    8384:	89 c2                	mov    %eax,%edx
    8386:	0f b6 05 52 8b 00 00 	movzbl 0x8b52,%eax
    838d:	0f b6 c0             	movzbl %al,%eax
    8390:	01 d0                	add    %edx,%eax
    8392:	01 c0                	add    %eax,%eax
    8394:	01 c8                	add    %ecx,%eax
    8396:	89 da                	mov    %ebx,%edx
    8398:	66 89 10             	mov    %dx,(%eax)
    839b:	0f b6 05 52 8b 00 00 	movzbl 0x8b52,%eax
    83a2:	83 c0 01             	add    $0x1,%eax
    83a5:	a2 52 8b 00 00       	mov    %al,0x8b52
    83aa:	90                   	nop
    83ab:	83 c4 10             	add    $0x10,%esp
    83ae:	5b                   	pop    %ebx
    83af:	5d                   	pop    %ebp
    83b0:	c3                   	ret    
    83b1:	55                   	push   %ebp
    83b2:	89 e5                	mov    %esp,%ebp
    83b4:	83 ec 18             	sub    $0x18,%esp
    83b7:	66 c7 45 f6 00 00    	movw   $0x0,-0xa(%ebp)
    83bd:	eb 2d                	jmp    0x83ec
    83bf:	0f b6 05 50 8b 00 00 	movzbl 0x8b50,%eax
    83c6:	83 c8 20             	or     $0x20,%eax
    83c9:	89 c1                	mov    %eax,%ecx
    83cb:	a1 4c 8b 00 00       	mov    0x8b4c,%eax
    83d0:	0f b7 55 f6          	movzwl -0xa(%ebp),%edx
    83d4:	0f b7 d2             	movzwl %dx,%edx
    83d7:	01 d2                	add    %edx,%edx
    83d9:	01 c2                	add    %eax,%edx
    83db:	0f b6 c1             	movzbl %cl,%eax
    83de:	66 89 02             	mov    %ax,(%edx)
    83e1:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
    83e5:	83 c0 01             	add    $0x1,%eax
    83e8:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
    83ec:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
    83f0:	66 3d 1f 08          	cmp    $0x81f,%ax
    83f4:	76 c9                	jbe    0x83bf
    83f6:	83 ec 08             	sub    $0x8,%esp
    83f9:	6a 00                	push   $0x0
    83fb:	6a 00                	push   $0x0
    83fd:	e8 06 00 00 00       	call   0x8408
    8402:	83 c4 10             	add    $0x10,%esp
    8405:	90                   	nop
    8406:	c9                   	leave  
    8407:	c3                   	ret    
    8408:	55                   	push   %ebp
    8409:	89 e5                	mov    %esp,%ebp
    840b:	6a 0f                	push   $0xf
    840d:	6a 0f                	push   $0xf
    840f:	68 21 8b 00 00       	push   $0x8b21
    8414:	e8 23 ff ff ff       	call   0x833c
    8419:	83 c4 0c             	add    $0xc,%esp
    841c:	90                   	nop
    841d:	c9                   	leave  
    841e:	c3                   	ret    
    841f:	55                   	push   %ebp
    8420:	89 e5                	mov    %esp,%ebp
    8422:	53                   	push   %ebx
    8423:	83 ec 10             	sub    $0x10,%esp
    8426:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
    842d:	eb 2b                	jmp    0x845a
    842f:	0f b6 05 51 8b 00 00 	movzbl 0x8b51,%eax
    8436:	0f b6 d0             	movzbl %al,%edx
    8439:	0f b6 05 50 8b 00 00 	movzbl 0x8b50,%eax
    8440:	0f b6 c0             	movzbl %al,%eax
    8443:	8b 5d f8             	mov    -0x8(%ebp),%ebx
    8446:	8b 4d 08             	mov    0x8(%ebp),%ecx
    8449:	01 d9                	add    %ebx,%ecx
    844b:	52                   	push   %edx
    844c:	50                   	push   %eax
    844d:	51                   	push   %ecx
    844e:	e8 e9 fe ff ff       	call   0x833c
    8453:	83 c4 0c             	add    $0xc,%esp
    8456:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
    845a:	8b 55 f8             	mov    -0x8(%ebp),%edx
    845d:	8b 45 08             	mov    0x8(%ebp),%eax
    8460:	01 d0                	add    %edx,%eax
    8462:	0f b6 00             	movzbl (%eax),%eax
    8465:	84 c0                	test   %al,%al
    8467:	75 c6                	jne    0x842f
    8469:	90                   	nop
    846a:	90                   	nop
    846b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    846e:	c9                   	leave  
    846f:	c3                   	ret    
    8470:	55                   	push   %ebp
    8471:	89 e5                	mov    %esp,%ebp
    8473:	ff 75 08             	pushl  0x8(%ebp)
    8476:	e8 a4 ff ff ff       	call   0x841f
    847b:	83 c4 04             	add    $0x4,%esp
    847e:	0f b6 05 53 8b 00 00 	movzbl 0x8b53,%eax
    8485:	83 c0 01             	add    $0x1,%eax
    8488:	a2 53 8b 00 00       	mov    %al,0x8b53
    848d:	c6 05 52 8b 00 00 00 	movb   $0x0,0x8b52
    8494:	90                   	nop
    8495:	c9                   	leave  
    8496:	c3                   	ret    
    8497:	55                   	push   %ebp
    8498:	89 e5                	mov    %esp,%ebp
    849a:	83 ec 08             	sub    $0x8,%esp
    849d:	8b 55 08             	mov    0x8(%ebp),%edx
    84a0:	8b 45 0c             	mov    0xc(%ebp),%eax
    84a3:	88 55 fc             	mov    %dl,-0x4(%ebp)
    84a6:	88 45 f8             	mov    %al,-0x8(%ebp)
    84a9:	6a 0a                	push   $0xa
    84ab:	68 d4 03 00 00       	push   $0x3d4
    84b0:	e8 58 fe ff ff       	call   0x830d
    84b5:	83 c4 08             	add    $0x8,%esp
    84b8:	68 d5 03 00 00       	push   $0x3d5
    84bd:	e8 2e fe ff ff       	call   0x82f0
    84c2:	83 c4 04             	add    $0x4,%esp
    84c5:	83 e0 c0             	and    $0xffffffc0,%eax
    84c8:	89 c2                	mov    %eax,%edx
    84ca:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
    84ce:	09 d0                	or     %edx,%eax
    84d0:	0f b6 c0             	movzbl %al,%eax
    84d3:	50                   	push   %eax
    84d4:	68 d5 03 00 00       	push   $0x3d5
    84d9:	e8 2f fe ff ff       	call   0x830d
    84de:	83 c4 08             	add    $0x8,%esp
    84e1:	6a 0b                	push   $0xb
    84e3:	68 d4 03 00 00       	push   $0x3d4
    84e8:	e8 20 fe ff ff       	call   0x830d
    84ed:	83 c4 08             	add    $0x8,%esp
    84f0:	68 d5 03 00 00       	push   $0x3d5
    84f5:	e8 f6 fd ff ff       	call   0x82f0
    84fa:	83 c4 04             	add    $0x4,%esp
    84fd:	83 e0 e0             	and    $0xffffffe0,%eax
    8500:	89 c2                	mov    %eax,%edx
    8502:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
    8506:	09 d0                	or     %edx,%eax
    8508:	0f b6 c0             	movzbl %al,%eax
    850b:	50                   	push   %eax
    850c:	68 d5 03 00 00       	push   $0x3d5
    8511:	e8 f7 fd ff ff       	call   0x830d
    8516:	83 c4 08             	add    $0x8,%esp
    8519:	90                   	nop
    851a:	c9                   	leave  
    851b:	c3                   	ret    
    851c:	55                   	push   %ebp
    851d:	89 e5                	mov    %esp,%ebp
    851f:	83 ec 14             	sub    $0x14,%esp
    8522:	8b 45 08             	mov    0x8(%ebp),%eax
    8525:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
    8529:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
    852d:	89 c2                	mov    %eax,%edx
    852f:	ec                   	in     (%dx),%al
    8530:	88 45 ff             	mov    %al,-0x1(%ebp)
    8533:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
    8537:	c9                   	leave  
    8538:	c3                   	ret    
    8539:	55                   	push   %ebp
    853a:	89 e5                	mov    %esp,%ebp
    853c:	57                   	push   %edi
    853d:	53                   	push   %ebx
    853e:	8b 55 08             	mov    0x8(%ebp),%edx
    8541:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    8544:	8b 45 10             	mov    0x10(%ebp),%eax
    8547:	89 cb                	mov    %ecx,%ebx
    8549:	89 df                	mov    %ebx,%edi
    854b:	89 c1                	mov    %eax,%ecx
    854d:	fc                   	cld    
    854e:	66 f3 6d             	rep insw (%dx),%es:(%edi)
    8551:	89 c8                	mov    %ecx,%eax
    8553:	89 fb                	mov    %edi,%ebx
    8555:	89 5d 0c             	mov    %ebx,0xc(%ebp)
    8558:	89 45 10             	mov    %eax,0x10(%ebp)
    855b:	90                   	nop
    855c:	5b                   	pop    %ebx
    855d:	5f                   	pop    %edi
    855e:	5d                   	pop    %ebp
    855f:	c3                   	ret    
    8560:	55                   	push   %ebp
    8561:	89 e5                	mov    %esp,%ebp
    8563:	83 ec 08             	sub    $0x8,%esp
    8566:	8b 45 08             	mov    0x8(%ebp),%eax
    8569:	8b 55 0c             	mov    0xc(%ebp),%edx
    856c:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
    8570:	89 d0                	mov    %edx,%eax
    8572:	88 45 f8             	mov    %al,-0x8(%ebp)
    8575:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
    8579:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
    857d:	ee                   	out    %al,(%dx)
    857e:	90                   	nop
    857f:	c9                   	leave  
    8580:	c3                   	ret    
    8581:	55                   	push   %ebp
    8582:	89 e5                	mov    %esp,%ebp
    8584:	83 ec 08             	sub    $0x8,%esp
    8587:	e8 ac 00 00 00       	call   0x8638
    858c:	8b 45 0c             	mov    0xc(%ebp),%eax
    858f:	c1 e8 18             	shr    $0x18,%eax
    8592:	83 c8 e0             	or     $0xffffffe0,%eax
    8595:	0f b6 c0             	movzbl %al,%eax
    8598:	83 ec 08             	sub    $0x8,%esp
    859b:	50                   	push   %eax
    859c:	68 f6 01 00 00       	push   $0x1f6
    85a1:	e8 ba ff ff ff       	call   0x8560
    85a6:	83 c4 10             	add    $0x10,%esp
    85a9:	83 ec 08             	sub    $0x8,%esp
    85ac:	6a 01                	push   $0x1
    85ae:	68 f2 01 00 00       	push   $0x1f2
    85b3:	e8 a8 ff ff ff       	call   0x8560
    85b8:	83 c4 10             	add    $0x10,%esp
    85bb:	8b 45 0c             	mov    0xc(%ebp),%eax
    85be:	0f b6 c0             	movzbl %al,%eax
    85c1:	83 ec 08             	sub    $0x8,%esp
    85c4:	50                   	push   %eax
    85c5:	68 f3 01 00 00       	push   $0x1f3
    85ca:	e8 91 ff ff ff       	call   0x8560
    85cf:	83 c4 10             	add    $0x10,%esp
    85d2:	8b 45 0c             	mov    0xc(%ebp),%eax
    85d5:	c1 e8 08             	shr    $0x8,%eax
    85d8:	0f b6 c0             	movzbl %al,%eax
    85db:	83 ec 08             	sub    $0x8,%esp
    85de:	50                   	push   %eax
    85df:	68 f4 01 00 00       	push   $0x1f4
    85e4:	e8 77 ff ff ff       	call   0x8560
    85e9:	83 c4 10             	add    $0x10,%esp
    85ec:	8b 45 0c             	mov    0xc(%ebp),%eax
    85ef:	c1 e8 10             	shr    $0x10,%eax
    85f2:	0f b6 c0             	movzbl %al,%eax
    85f5:	83 ec 08             	sub    $0x8,%esp
    85f8:	50                   	push   %eax
    85f9:	68 f5 01 00 00       	push   $0x1f5
    85fe:	e8 5d ff ff ff       	call   0x8560
    8603:	83 c4 10             	add    $0x10,%esp
    8606:	83 ec 08             	sub    $0x8,%esp
    8609:	6a 20                	push   $0x20
    860b:	68 f7 01 00 00       	push   $0x1f7
    8610:	e8 4b ff ff ff       	call   0x8560
    8615:	83 c4 10             	add    $0x10,%esp
    8618:	e8 1b 00 00 00       	call   0x8638
    861d:	83 ec 04             	sub    $0x4,%esp
    8620:	68 00 01 00 00       	push   $0x100
    8625:	ff 75 08             	pushl  0x8(%ebp)
    8628:	68 f0 01 00 00       	push   $0x1f0
    862d:	e8 07 ff ff ff       	call   0x8539
    8632:	83 c4 10             	add    $0x10,%esp
    8635:	90                   	nop
    8636:	c9                   	leave  
    8637:	c3                   	ret    
    8638:	55                   	push   %ebp
    8639:	89 e5                	mov    %esp,%ebp
    863b:	90                   	nop
    863c:	68 f7 01 00 00       	push   $0x1f7
    8641:	e8 d6 fe ff ff       	call   0x851c
    8646:	83 c4 04             	add    $0x4,%esp
    8649:	0f b6 c0             	movzbl %al,%eax
    864c:	25 c0 00 00 00       	and    $0xc0,%eax
    8651:	83 f8 40             	cmp    $0x40,%eax
    8654:	75 e6                	jne    0x863c
    8656:	90                   	nop
    8657:	90                   	nop
    8658:	c9                   	leave  
    8659:	c3                   	ret    
    865a:	55                   	push   %ebp
    865b:	89 e5                	mov    %esp,%ebp
    865d:	83 ec 38             	sub    $0x38,%esp
    8660:	8b 55 08             	mov    0x8(%ebp),%edx
    8663:	8b 45 0c             	mov    0xc(%ebp),%eax
    8666:	01 d0                	add    %edx,%eax
    8668:	89 45 f0             	mov    %eax,-0x10(%ebp)
    866b:	8b 45 f0             	mov    -0x10(%ebp),%eax
    866e:	05 ff 01 00 00       	add    $0x1ff,%eax
    8673:	25 00 fe ff ff       	and    $0xfffffe00,%eax
    8678:	01 45 f0             	add    %eax,-0x10(%ebp)
    867b:	8b 45 10             	mov    0x10(%ebp),%eax
    867e:	05 00 10 00 00       	add    $0x1000,%eax
    8683:	c1 e8 09             	shr    $0x9,%eax
    8686:	89 45 f4             	mov    %eax,-0xc(%ebp)
    8689:	83 ec 0c             	sub    $0xc,%esp
    868c:	68 23 8b 00 00       	push   $0x8b23
    8691:	e8 89 fd ff ff       	call   0x841f
    8696:	83 c4 10             	add    $0x10,%esp
    8699:	c7 45 d2 46 46 46 46 	movl   $0x46464646,-0x2e(%ebp)
    86a0:	c7 45 d6 46 00 00 00 	movl   $0x46,-0x2a(%ebp)
    86a7:	c7 45 da 00 00 00 00 	movl   $0x0,-0x26(%ebp)
    86ae:	c7 45 de 00 00 00 00 	movl   $0x0,-0x22(%ebp)
    86b5:	c7 45 e2 00 00 00 00 	movl   $0x0,-0x1e(%ebp)
    86bc:	c7 45 e6 00 00 00 00 	movl   $0x0,-0x1a(%ebp)
    86c3:	c7 45 ea 00 00 00 00 	movl   $0x0,-0x16(%ebp)
    86ca:	66 c7 45 ee 00 00    	movw   $0x0,-0x12(%ebp)
    86d0:	8b 45 08             	mov    0x8(%ebp),%eax
    86d3:	83 ec 04             	sub    $0x4,%esp
    86d6:	6a 0a                	push   $0xa
    86d8:	8d 55 d2             	lea    -0x2e(%ebp),%edx
    86db:	52                   	push   %edx
    86dc:	50                   	push   %eax
    86dd:	e8 4e f9 ff ff       	call   0x8030
    86e2:	83 c4 10             	add    $0x10,%esp
    86e5:	83 ec 0c             	sub    $0xc,%esp
    86e8:	8d 45 d2             	lea    -0x2e(%ebp),%eax
    86eb:	50                   	push   %eax
    86ec:	e8 2e fd ff ff       	call   0x841f
    86f1:	83 c4 10             	add    $0x10,%esp
    86f4:	83 ec 0c             	sub    $0xc,%esp
    86f7:	68 31 8b 00 00       	push   $0x8b31
    86fc:	e8 1e fd ff ff       	call   0x841f
    8701:	83 c4 10             	add    $0x10,%esp
    8704:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8707:	83 ec 04             	sub    $0x4,%esp
    870a:	6a 0a                	push   $0xa
    870c:	8d 55 d2             	lea    -0x2e(%ebp),%edx
    870f:	52                   	push   %edx
    8710:	50                   	push   %eax
    8711:	e8 1a f9 ff ff       	call   0x8030
    8716:	83 c4 10             	add    $0x10,%esp
    8719:	83 ec 0c             	sub    $0xc,%esp
    871c:	8d 45 d2             	lea    -0x2e(%ebp),%eax
    871f:	50                   	push   %eax
    8720:	e8 fa fc ff ff       	call   0x841f
    8725:	83 c4 10             	add    $0x10,%esp
    8728:	83 ec 0c             	sub    $0xc,%esp
    872b:	68 4a 8b 00 00       	push   $0x8b4a
    8730:	e8 ea fc ff ff       	call   0x841f
    8735:	83 c4 10             	add    $0x10,%esp
    8738:	eb 1c                	jmp    0x8756
    873a:	83 ec 08             	sub    $0x8,%esp
    873d:	ff 75 f4             	pushl  -0xc(%ebp)
    8740:	ff 75 08             	pushl  0x8(%ebp)
    8743:	e8 39 fe ff ff       	call   0x8581
    8748:	83 c4 10             	add    $0x10,%esp
    874b:	81 45 08 00 02 00 00 	addl   $0x200,0x8(%ebp)
    8752:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    8756:	8b 45 08             	mov    0x8(%ebp),%eax
    8759:	3b 45 f0             	cmp    -0x10(%ebp),%eax
    875c:	72 dc                	jb     0x873a
    875e:	8b 45 f4             	mov    -0xc(%ebp),%eax
    8761:	83 e8 01             	sub    $0x1,%eax
    8764:	89 c2                	mov    %eax,%edx
    8766:	83 ec 04             	sub    $0x4,%esp
    8769:	6a 0a                	push   $0xa
    876b:	8d 45 d2             	lea    -0x2e(%ebp),%eax
    876e:	50                   	push   %eax
    876f:	52                   	push   %edx
    8770:	e8 bb f8 ff ff       	call   0x8030
    8775:	83 c4 10             	add    $0x10,%esp
    8778:	83 ec 0c             	sub    $0xc,%esp
    877b:	8d 45 d2             	lea    -0x2e(%ebp),%eax
    877e:	50                   	push   %eax
    877f:	e8 ec fc ff ff       	call   0x8470
    8784:	83 c4 10             	add    $0x10,%esp
    8787:	90                   	nop
    8788:	c9                   	leave  
    8789:	c3                   	ret    
    878a:	00 00                	add    %al,(%eax)
    878c:	14 00                	adc    $0x0,%al
    878e:	00 00                	add    %al,(%eax)
    8790:	00 00                	add    %al,(%eax)
    8792:	00 00                	add    %al,(%eax)
    8794:	01 7a 52             	add    %edi,0x52(%edx)
    8797:	00 01                	add    %al,(%ecx)
    8799:	7c 08                	jl     0x87a3
    879b:	01 1b                	add    %ebx,(%ebx)
    879d:	0c 04                	or     $0x4,%al
    879f:	04 88                	add    $0x88,%al
    87a1:	01 00                	add    %eax,(%eax)
    87a3:	00 1c 00             	add    %bl,(%eax,%eax,1)
    87a6:	00 00                	add    %al,(%eax)
    87a8:	1c 00                	sbb    $0x0,%al
    87aa:	00 00                	add    %al,(%eax)
    87ac:	84 f8                	test   %bh,%al
    87ae:	ff                   	(bad)  
    87af:	ff d3                	call   *%ebx
    87b1:	00 00                	add    %al,(%eax)
    87b3:	00 00                	add    %al,(%eax)
    87b5:	41                   	inc    %ecx
    87b6:	0e                   	push   %cs
    87b7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    87bd:	02 cf                	add    %bh,%cl
    87bf:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    87c2:	04 00                	add    $0x0,%al
    87c4:	1c 00                	sbb    $0x0,%al
    87c6:	00 00                	add    %al,(%eax)
    87c8:	3c 00                	cmp    $0x0,%al
    87ca:	00 00                	add    %al,(%eax)
    87cc:	37                   	aaa    
    87cd:	f9                   	stc    
    87ce:	ff                   	(bad)  
    87cf:	ff 73 00             	pushl  0x0(%ebx)
    87d2:	00 00                	add    %al,(%eax)
    87d4:	00 41 0e             	add    %al,0xe(%ecx)
    87d7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    87dd:	02 6f c5             	add    -0x3b(%edi),%ch
    87e0:	0c 04                	or     $0x4,%al
    87e2:	04 00                	add    $0x0,%al
    87e4:	1c 00                	sbb    $0x0,%al
    87e6:	00 00                	add    %al,(%eax)
    87e8:	5c                   	pop    %esp
    87e9:	00 00                	add    %al,(%eax)
    87eb:	00 8a f9 ff ff 24    	add    %cl,0x24fffff9(%edx)
    87f1:	00 00                	add    %al,(%eax)
    87f3:	00 00                	add    %al,(%eax)
    87f5:	41                   	inc    %ecx
    87f6:	0e                   	push   %cs
    87f7:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    87fd:	60                   	pusha  
    87fe:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8801:	04 00                	add    $0x0,%al
    8803:	00 14 00             	add    %dl,(%eax,%eax,1)
    8806:	00 00                	add    %al,(%eax)
    8808:	00 00                	add    %al,(%eax)
    880a:	00 00                	add    %al,(%eax)
    880c:	01 7a 52             	add    %edi,0x52(%edx)
    880f:	00 01                	add    %al,(%ecx)
    8811:	7c 08                	jl     0x881b
    8813:	01 1b                	add    %ebx,(%ebx)
    8815:	0c 04                	or     $0x4,%al
    8817:	04 88                	add    $0x88,%al
    8819:	01 00                	add    %eax,(%eax)
    881b:	00 24 00             	add    %ah,(%eax,%eax,1)
    881e:	00 00                	add    %al,(%eax)
    8820:	1c 00                	sbb    $0x0,%al
    8822:	00 00                	add    %al,(%eax)
    8824:	e6 f7                	out    %al,$0xf7
    8826:	ff                   	(bad)  
    8827:	ff 26                	jmp    *(%esi)
    8829:	00 00                	add    %al,(%eax)
    882b:	00 00                	add    %al,(%eax)
    882d:	41                   	inc    %ecx
    882e:	0e                   	push   %cs
    882f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8835:	42                   	inc    %edx
    8836:	87 03                	xchg   %eax,(%ebx)
    8838:	83 04 5e c3          	addl   $0xffffffc3,(%esi,%ebx,2)
    883c:	41                   	inc    %ecx
    883d:	c7 41 c5 0c 04 04 00 	movl   $0x4040c,-0x3b(%ecx)
    8844:	1c 00                	sbb    $0x0,%al
    8846:	00 00                	add    %al,(%eax)
    8848:	44                   	inc    %esp
    8849:	00 00                	add    %al,(%eax)
    884b:	00 4e f9             	add    %cl,-0x7(%esi)
    884e:	ff                   	(bad)  
    884f:	ff 22                	jmp    *(%edx)
    8851:	01 00                	add    %eax,(%eax)
    8853:	00 00                	add    %al,(%eax)
    8855:	41                   	inc    %ecx
    8856:	0e                   	push   %cs
    8857:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    885d:	03 1e                	add    (%esi),%ebx
    885f:	01 c5                	add    %eax,%ebp
    8861:	0c 04                	or     $0x4,%al
    8863:	04 18                	add    $0x18,%al
    8865:	00 00                	add    %al,(%eax)
    8867:	00 64 00 00          	add    %ah,0x0(%eax,%eax,1)
    886b:	00 50 fa             	add    %dl,-0x6(%eax)
    886e:	ff                   	(bad)  
    886f:	ff 34 00             	pushl  (%eax,%eax,1)
    8872:	00 00                	add    %al,(%eax)
    8874:	00 41 0e             	add    %al,0xe(%ecx)
    8877:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    887d:	00 00                	add    %al,(%eax)
    887f:	00 14 00             	add    %dl,(%eax,%eax,1)
    8882:	00 00                	add    %al,(%eax)
    8884:	00 00                	add    %al,(%eax)
    8886:	00 00                	add    %al,(%eax)
    8888:	01 7a 52             	add    %edi,0x52(%edx)
    888b:	00 01                	add    %al,(%ecx)
    888d:	7c 08                	jl     0x8897
    888f:	01 1b                	add    %ebx,(%ebx)
    8891:	0c 04                	or     $0x4,%al
    8893:	04 88                	add    $0x88,%al
    8895:	01 00                	add    %eax,(%eax)
    8897:	00 1c 00             	add    %bl,(%eax,%eax,1)
    889a:	00 00                	add    %al,(%eax)
    889c:	1c 00                	sbb    $0x0,%al
    889e:	00 00                	add    %al,(%eax)
    88a0:	50                   	push   %eax
    88a1:	fa                   	cli    
    88a2:	ff                   	(bad)  
    88a3:	ff 1d 00 00 00 00    	lcall  *0x0
    88a9:	41                   	inc    %ecx
    88aa:	0e                   	push   %cs
    88ab:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    88b1:	59                   	pop    %ecx
    88b2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    88b5:	04 00                	add    $0x0,%al
    88b7:	00 1c 00             	add    %bl,(%eax,%eax,1)
    88ba:	00 00                	add    %al,(%eax)
    88bc:	3c 00                	cmp    $0x0,%al
    88be:	00 00                	add    %al,(%eax)
    88c0:	4d                   	dec    %ebp
    88c1:	fa                   	cli    
    88c2:	ff                   	(bad)  
    88c3:	ff 21                	jmp    *(%ecx)
    88c5:	00 00                	add    %al,(%eax)
    88c7:	00 00                	add    %al,(%eax)
    88c9:	41                   	inc    %ecx
    88ca:	0e                   	push   %cs
    88cb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    88d1:	5d                   	pop    %ebp
    88d2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    88d5:	04 00                	add    $0x0,%al
    88d7:	00 1c 00             	add    %bl,(%eax,%eax,1)
    88da:	00 00                	add    %al,(%eax)
    88dc:	5c                   	pop    %esp
    88dd:	00 00                	add    %al,(%eax)
    88df:	00 4e fa             	add    %cl,-0x6(%esi)
    88e2:	ff                   	(bad)  
    88e3:	ff 0e                	decl   (%esi)
    88e5:	00 00                	add    %al,(%eax)
    88e7:	00 00                	add    %al,(%eax)
    88e9:	41                   	inc    %ecx
    88ea:	0e                   	push   %cs
    88eb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    88f1:	4a                   	dec    %edx
    88f2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    88f5:	04 00                	add    $0x0,%al
    88f7:	00 20                	add    %ah,(%eax)
    88f9:	00 00                	add    %al,(%eax)
    88fb:	00 7c 00 00          	add    %bh,0x0(%eax,%eax,1)
    88ff:	00 3c fa             	add    %bh,(%edx,%edi,8)
    8902:	ff                   	(bad)  
    8903:	ff 75 00             	pushl  0x0(%ebp)
    8906:	00 00                	add    %al,(%eax)
    8908:	00 41 0e             	add    %al,0xe(%ecx)
    890b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8911:	44                   	inc    %esp
    8912:	83 03 02             	addl   $0x2,(%ebx)
    8915:	6c                   	insb   (%dx),%es:(%edi)
    8916:	c3                   	ret    
    8917:	41                   	inc    %ecx
    8918:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    891b:	04 1c                	add    $0x1c,%al
    891d:	00 00                	add    %al,(%eax)
    891f:	00 a0 00 00 00 8d    	add    %ah,-0x73000000(%eax)
    8925:	fa                   	cli    
    8926:	ff                   	(bad)  
    8927:	ff 57 00             	call   *0x0(%edi)
    892a:	00 00                	add    %al,(%eax)
    892c:	00 41 0e             	add    %al,0xe(%ecx)
    892f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8935:	02 53 c5             	add    -0x3b(%ebx),%dl
    8938:	0c 04                	or     $0x4,%al
    893a:	04 00                	add    $0x0,%al
    893c:	1c 00                	sbb    $0x0,%al
    893e:	00 00                	add    %al,(%eax)
    8940:	c0 00 00             	rolb   $0x0,(%eax)
    8943:	00 c4                	add    %al,%ah
    8945:	fa                   	cli    
    8946:	ff                   	(bad)  
    8947:	ff 17                	call   *(%edi)
    8949:	00 00                	add    %al,(%eax)
    894b:	00 00                	add    %al,(%eax)
    894d:	41                   	inc    %ecx
    894e:	0e                   	push   %cs
    894f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8955:	53                   	push   %ebx
    8956:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8959:	04 00                	add    $0x0,%al
    895b:	00 20                	add    %ah,(%eax)
    895d:	00 00                	add    %al,(%eax)
    895f:	00 e0                	add    %ah,%al
    8961:	00 00                	add    %al,(%eax)
    8963:	00 bb fa ff ff 51    	add    %bh,0x51fffffa(%ebx)
    8969:	00 00                	add    %al,(%eax)
    896b:	00 00                	add    %al,(%eax)
    896d:	41                   	inc    %ecx
    896e:	0e                   	push   %cs
    896f:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8975:	44                   	inc    %esp
    8976:	83 03 02             	addl   $0x2,(%ebx)
    8979:	49                   	dec    %ecx
    897a:	c5 c3 0c             	(bad)  
    897d:	04 04                	add    $0x4,%al
    897f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    8982:	00 00                	add    %al,(%eax)
    8984:	04 01                	add    $0x1,%al
    8986:	00 00                	add    %al,(%eax)
    8988:	e8 fa ff ff 27       	call   0x28008987
    898d:	00 00                	add    %al,(%eax)
    898f:	00 00                	add    %al,(%eax)
    8991:	41                   	inc    %ecx
    8992:	0e                   	push   %cs
    8993:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8999:	63 c5                	arpl   %ax,%bp
    899b:	0c 04                	or     $0x4,%al
    899d:	04 00                	add    $0x0,%al
    899f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    89a2:	00 00                	add    %al,(%eax)
    89a4:	24 01                	and    $0x1,%al
    89a6:	00 00                	add    %al,(%eax)
    89a8:	ef                   	out    %eax,(%dx)
    89a9:	fa                   	cli    
    89aa:	ff                   	(bad)  
    89ab:	ff 85 00 00 00 00    	incl   0x0(%ebp)
    89b1:	41                   	inc    %ecx
    89b2:	0e                   	push   %cs
    89b3:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    89b9:	02 81 c5 0c 04 04    	add    0x4040cc5(%ecx),%al
    89bf:	00 14 00             	add    %dl,(%eax,%eax,1)
    89c2:	00 00                	add    %al,(%eax)
    89c4:	00 00                	add    %al,(%eax)
    89c6:	00 00                	add    %al,(%eax)
    89c8:	01 7a 52             	add    %edi,0x52(%edx)
    89cb:	00 01                	add    %al,(%ecx)
    89cd:	7c 08                	jl     0x89d7
    89cf:	01 1b                	add    %ebx,(%ebx)
    89d1:	0c 04                	or     $0x4,%al
    89d3:	04 88                	add    $0x88,%al
    89d5:	01 00                	add    %eax,(%eax)
    89d7:	00 1c 00             	add    %bl,(%eax,%eax,1)
    89da:	00 00                	add    %al,(%eax)
    89dc:	1c 00                	sbb    $0x0,%al
    89de:	00 00                	add    %al,(%eax)
    89e0:	3c fb                	cmp    $0xfb,%al
    89e2:	ff                   	(bad)  
    89e3:	ff 1d 00 00 00 00    	lcall  *0x0
    89e9:	41                   	inc    %ecx
    89ea:	0e                   	push   %cs
    89eb:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    89f1:	59                   	pop    %ecx
    89f2:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    89f5:	04 00                	add    $0x0,%al
    89f7:	00 24 00             	add    %ah,(%eax,%eax,1)
    89fa:	00 00                	add    %al,(%eax)
    89fc:	3c 00                	cmp    $0x0,%al
    89fe:	00 00                	add    %al,(%eax)
    8a00:	39 fb                	cmp    %edi,%ebx
    8a02:	ff                   	(bad)  
    8a03:	ff 27                	jmp    *(%edi)
    8a05:	00 00                	add    %al,(%eax)
    8a07:	00 00                	add    %al,(%eax)
    8a09:	41                   	inc    %ecx
    8a0a:	0e                   	push   %cs
    8a0b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8a11:	42                   	inc    %edx
    8a12:	87 03                	xchg   %eax,(%ebx)
    8a14:	83 04 5f c3          	addl   $0xffffffc3,(%edi,%ebx,2)
    8a18:	41                   	inc    %ecx
    8a19:	c7 41 c5 0c 04 04 00 	movl   $0x4040c,-0x3b(%ecx)
    8a20:	1c 00                	sbb    $0x0,%al
    8a22:	00 00                	add    %al,(%eax)
    8a24:	64 00 00             	add    %al,%fs:(%eax)
    8a27:	00 38                	add    %bh,(%eax)
    8a29:	fb                   	sti    
    8a2a:	ff                   	(bad)  
    8a2b:	ff 21                	jmp    *(%ecx)
    8a2d:	00 00                	add    %al,(%eax)
    8a2f:	00 00                	add    %al,(%eax)
    8a31:	41                   	inc    %ecx
    8a32:	0e                   	push   %cs
    8a33:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8a39:	5d                   	pop    %ebp
    8a3a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8a3d:	04 00                	add    $0x0,%al
    8a3f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    8a42:	00 00                	add    %al,(%eax)
    8a44:	84 00                	test   %al,(%eax)
    8a46:	00 00                	add    %al,(%eax)
    8a48:	39 fb                	cmp    %edi,%ebx
    8a4a:	ff                   	(bad)  
    8a4b:	ff b7 00 00 00 00    	pushl  0x0(%edi)
    8a51:	41                   	inc    %ecx
    8a52:	0e                   	push   %cs
    8a53:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8a59:	02 b3 c5 0c 04 04    	add    0x4040cc5(%ebx),%dh
    8a5f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    8a62:	00 00                	add    %al,(%eax)
    8a64:	a4                   	movsb  %ds:(%esi),%es:(%edi)
    8a65:	00 00                	add    %al,(%eax)
    8a67:	00 d0                	add    %dl,%al
    8a69:	fb                   	sti    
    8a6a:	ff                   	(bad)  
    8a6b:	ff 22                	jmp    *(%edx)
    8a6d:	00 00                	add    %al,(%eax)
    8a6f:	00 00                	add    %al,(%eax)
    8a71:	41                   	inc    %ecx
    8a72:	0e                   	push   %cs
    8a73:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8a79:	5e                   	pop    %esi
    8a7a:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8a7d:	04 00                	add    $0x0,%al
    8a7f:	00 1c 00             	add    %bl,(%eax,%eax,1)
    8a82:	00 00                	add    %al,(%eax)
    8a84:	c4 00                	les    (%eax),%eax
    8a86:	00 00                	add    %al,(%eax)
    8a88:	d2 fb                	sar    %cl,%bl
    8a8a:	ff                   	(bad)  
    8a8b:	ff 30                	pushl  (%eax)
    8a8d:	01 00                	add    %eax,(%eax)
    8a8f:	00 00                	add    %al,(%eax)
    8a91:	41                   	inc    %ecx
    8a92:	0e                   	push   %cs
    8a93:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
    8a99:	03 2c 01             	add    (%ecx,%eax,1),%ebp
    8a9c:	c5 0c 04             	lds    (%esp,%eax,1),%ecx
    8a9f:	04 45                	add    $0x45,%al
    8aa1:	6e                   	outsb  %ds:(%esi),(%dx)
    8aa2:	74 65                	je     0x8b09
    8aa4:	72 69                	jb     0x8b0f
    8aa6:	6e                   	outsb  %ds:(%esi),(%dx)
    8aa7:	67 20 62 6f          	and    %ah,0x6f(%bp,%si)
    8aab:	6f                   	outsl  %ds:(%esi),(%dx)
    8aac:	74 6d                	je     0x8b1b
    8aae:	61                   	popa   
    8aaf:	69 6e 00 4c 6f 61 64 	imul   $0x64616f4c,0x0(%esi),%ebp
    8ab6:	69 6e 67 20 74 68 65 	imul   $0x65687420,0x67(%esi),%ebp
    8abd:	20 70 72             	and    %dh,0x72(%eax)
    8ac0:	6f                   	outsl  %ds:(%esi),(%dx)
    8ac1:	67 72 61             	addr16 jb 0x8b25
    8ac4:	6d                   	insl   (%dx),%es:(%edi)
    8ac5:	20 73 65             	and    %dh,0x65(%ebx)
    8ac8:	67 6d                	insl   (%dx),%es:(%di)
    8aca:	65 6e                	outsb  %gs:(%esi),(%dx)
    8acc:	74 73                	je     0x8b41
    8ace:	00 45 6e             	add    %al,0x6e(%ebp)
    8ad1:	74 65                	je     0x8b38
    8ad3:	72 69                	jb     0x8b3e
    8ad5:	6e                   	outsb  %ds:(%esi),(%dx)
    8ad6:	67 20 6b 65          	and    %ch,0x65(%bp,%di)
    8ada:	72 6e                	jb     0x8b4a
    8adc:	65 6c                	gs insb (%dx),%es:(%edi)
    8ade:	00 00                	add    %al,(%eax)
    8ae0:	45                   	inc    %ebp
    8ae1:	72 72                	jb     0x8b55
    8ae3:	6f                   	outsl  %ds:(%esi),(%dx)
    8ae4:	72 3a                	jb     0x8b20
    8ae6:	20 6d 61             	and    %ch,0x61(%ebp)
    8ae9:	67 69 63 20 6e 75 6d 	imul   $0x626d756e,0x20(%bp,%di),%esp
    8af0:	62 
    8af1:	65 72 20             	gs jb  0x8b14
    8af4:	6e                   	outsb  %ds:(%esi),(%dx)
    8af5:	6f                   	outsl  %ds:(%esi),(%dx)
    8af6:	74 20                	je     0x8b18
    8af8:	64 65 74 65          	fs gs je 0x8b61
    8afc:	63 74 65 64          	arpl   %si,0x64(%ebp,%eiz,2)
    8b00:	20 69 6e             	and    %ch,0x6e(%ecx)
    8b03:	20 6b 65             	and    %ch,0x65(%ebx)
    8b06:	72 6e                	jb     0x8b76
    8b08:	65 6c                	gs insb (%dx),%es:(%edi)
    8b0a:	00 45 72             	add    %al,0x72(%ebp)
    8b0d:	72 6f                	jb     0x8b7e
    8b0f:	72 3a                	jb     0x8b4b
    8b11:	20 65 6e             	and    %ah,0x6e(%ebp)
    8b14:	74 72                	je     0x8b88
    8b16:	79 20                	jns    0x8b38
    8b18:	72 65                	jb     0x8b7f
    8b1a:	74 75                	je     0x8b91
    8b1c:	72 6e                	jb     0x8b8c
    8b1e:	65 64 00 20          	gs add %ah,%fs:(%eax)
    8b22:	00 46 6f             	add    %al,0x6f(%esi)
    8b25:	75 6e                	jne    0x8b95
    8b27:	64 20 6f 66          	and    %ch,%fs:0x66(%edi)
    8b2b:	66 73 65             	data16 jae 0x8b93
    8b2e:	74 20                	je     0x8b50
    8b30:	00 20                	add    %ah,(%eax)
    8b32:	74 68                	je     0x8b9c
    8b34:	65 72 65             	gs jb  0x8b9c
    8b37:	66 6f                	outsw  %ds:(%esi),(%dx)
    8b39:	72 65                	jb     0x8ba0
    8b3b:	20 72 65             	and    %dh,0x65(%edx)
    8b3e:	61                   	popa   
    8b3f:	64 69 6e 67 20 4c 42 	imul   $0x41424c20,%fs:0x67(%esi),%ebp
    8b46:	41 
    8b47:	73 3a                	jae    0x8b83
    8b49:	00 2d 00 00 80 0b    	add    %ch,0xb800000
    8b4f:	00 07                	add    %al,(%edi)
	...
