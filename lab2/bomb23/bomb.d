
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400a28 <_init>:
  400a28:	48 83 ec 08          	sub    $0x8,%rsp
  400a2c:	e8 0b 02 00 00       	callq  400c3c <call_gmon_start>
  400a31:	e8 8a 02 00 00       	callq  400cc0 <frame_dummy>
  400a36:	e8 85 1a 00 00       	callq  4024c0 <__do_global_ctors_aux>
  400a3b:	48 83 c4 08          	add    $0x8,%rsp
  400a3f:	c3                   	retq   

Disassembly of section .plt:

0000000000400a40 <printf@plt-0x10>:
  400a40:	ff 35 c2 28 20 00    	pushq  0x2028c2(%rip)        # 603308 <_GLOBAL_OFFSET_TABLE_+0x8>
  400a46:	ff 25 c4 28 20 00    	jmpq   *0x2028c4(%rip)        # 603310 <_GLOBAL_OFFSET_TABLE_+0x10>
  400a4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a50 <printf@plt>:
  400a50:	ff 25 c2 28 20 00    	jmpq   *0x2028c2(%rip)        # 603318 <_GLOBAL_OFFSET_TABLE_+0x18>
  400a56:	68 00 00 00 00       	pushq  $0x0
  400a5b:	e9 e0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400a60 <memset@plt>:
  400a60:	ff 25 ba 28 20 00    	jmpq   *0x2028ba(%rip)        # 603320 <_GLOBAL_OFFSET_TABLE_+0x20>
  400a66:	68 01 00 00 00       	pushq  $0x1
  400a6b:	e9 d0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400a70 <close@plt>:
  400a70:	ff 25 b2 28 20 00    	jmpq   *0x2028b2(%rip)        # 603328 <_GLOBAL_OFFSET_TABLE_+0x28>
  400a76:	68 02 00 00 00       	pushq  $0x2
  400a7b:	e9 c0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400a80 <gethostbyname@plt>:
  400a80:	ff 25 aa 28 20 00    	jmpq   *0x2028aa(%rip)        # 603330 <_GLOBAL_OFFSET_TABLE_+0x30>
  400a86:	68 03 00 00 00       	pushq  $0x3
  400a8b:	e9 b0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400a90 <puts@plt>:
  400a90:	ff 25 a2 28 20 00    	jmpq   *0x2028a2(%rip)        # 603338 <_GLOBAL_OFFSET_TABLE_+0x38>
  400a96:	68 04 00 00 00       	pushq  $0x4
  400a9b:	e9 a0 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400aa0 <exit@plt>:
  400aa0:	ff 25 9a 28 20 00    	jmpq   *0x20289a(%rip)        # 603340 <_GLOBAL_OFFSET_TABLE_+0x40>
  400aa6:	68 05 00 00 00       	pushq  $0x5
  400aab:	e9 90 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ab0 <strcasecmp@plt>:
  400ab0:	ff 25 92 28 20 00    	jmpq   *0x202892(%rip)        # 603348 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ab6:	68 06 00 00 00       	pushq  $0x6
  400abb:	e9 80 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ac0 <read@plt>:
  400ac0:	ff 25 8a 28 20 00    	jmpq   *0x20288a(%rip)        # 603350 <_GLOBAL_OFFSET_TABLE_+0x50>
  400ac6:	68 07 00 00 00       	pushq  $0x7
  400acb:	e9 70 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ad0 <fopen@plt>:
  400ad0:	ff 25 82 28 20 00    	jmpq   *0x202882(%rip)        # 603358 <_GLOBAL_OFFSET_TABLE_+0x58>
  400ad6:	68 08 00 00 00       	pushq  $0x8
  400adb:	e9 60 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ae0 <__libc_start_main@plt>:
  400ae0:	ff 25 7a 28 20 00    	jmpq   *0x20287a(%rip)        # 603360 <_GLOBAL_OFFSET_TABLE_+0x60>
  400ae6:	68 09 00 00 00       	pushq  $0x9
  400aeb:	e9 50 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400af0 <fgets@plt>:
  400af0:	ff 25 72 28 20 00    	jmpq   *0x202872(%rip)        # 603368 <_GLOBAL_OFFSET_TABLE_+0x68>
  400af6:	68 0a 00 00 00       	pushq  $0xa
  400afb:	e9 40 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b00 <bcopy@plt>:
  400b00:	ff 25 6a 28 20 00    	jmpq   *0x20286a(%rip)        # 603370 <_GLOBAL_OFFSET_TABLE_+0x70>
  400b06:	68 0b 00 00 00       	pushq  $0xb
  400b0b:	e9 30 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b10 <__ctype_b_loc@plt>:
  400b10:	ff 25 62 28 20 00    	jmpq   *0x202862(%rip)        # 603378 <_GLOBAL_OFFSET_TABLE_+0x78>
  400b16:	68 0c 00 00 00       	pushq  $0xc
  400b1b:	e9 20 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b20 <sprintf@plt>:
  400b20:	ff 25 5a 28 20 00    	jmpq   *0x20285a(%rip)        # 603380 <_GLOBAL_OFFSET_TABLE_+0x80>
  400b26:	68 0d 00 00 00       	pushq  $0xd
  400b2b:	e9 10 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b30 <__strtol_internal@plt>:
  400b30:	ff 25 52 28 20 00    	jmpq   *0x202852(%rip)        # 603388 <_GLOBAL_OFFSET_TABLE_+0x88>
  400b36:	68 0e 00 00 00       	pushq  $0xe
  400b3b:	e9 00 ff ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b40 <sscanf@plt>:
  400b40:	ff 25 4a 28 20 00    	jmpq   *0x20284a(%rip)        # 603390 <_GLOBAL_OFFSET_TABLE_+0x90>
  400b46:	68 0f 00 00 00       	pushq  $0xf
  400b4b:	e9 f0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b50 <sleep@plt>:
  400b50:	ff 25 42 28 20 00    	jmpq   *0x202842(%rip)        # 603398 <_GLOBAL_OFFSET_TABLE_+0x98>
  400b56:	68 10 00 00 00       	pushq  $0x10
  400b5b:	e9 e0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b60 <connect@plt>:
  400b60:	ff 25 3a 28 20 00    	jmpq   *0x20283a(%rip)        # 6033a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400b66:	68 11 00 00 00       	pushq  $0x11
  400b6b:	e9 d0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b70 <gethostname@plt>:
  400b70:	ff 25 32 28 20 00    	jmpq   *0x202832(%rip)        # 6033a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400b76:	68 12 00 00 00       	pushq  $0x12
  400b7b:	e9 c0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b80 <signal@plt>:
  400b80:	ff 25 2a 28 20 00    	jmpq   *0x20282a(%rip)        # 6033b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400b86:	68 13 00 00 00       	pushq  $0x13
  400b8b:	e9 b0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400b90 <socket@plt>:
  400b90:	ff 25 22 28 20 00    	jmpq   *0x202822(%rip)        # 6033b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400b96:	68 14 00 00 00       	pushq  $0x14
  400b9b:	e9 a0 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400ba0 <getenv@plt>:
  400ba0:	ff 25 1a 28 20 00    	jmpq   *0x20281a(%rip)        # 6033c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400ba6:	68 15 00 00 00       	pushq  $0x15
  400bab:	e9 90 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400bb0 <alarm@plt>:
  400bb0:	ff 25 12 28 20 00    	jmpq   *0x202812(%rip)        # 6033c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400bb6:	68 16 00 00 00       	pushq  $0x16
  400bbb:	e9 80 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400bc0 <__errno_location@plt>:
  400bc0:	ff 25 0a 28 20 00    	jmpq   *0x20280a(%rip)        # 6033d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400bc6:	68 17 00 00 00       	pushq  $0x17
  400bcb:	e9 70 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400bd0 <strcpy@plt>:
  400bd0:	ff 25 02 28 20 00    	jmpq   *0x202802(%rip)        # 6033d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400bd6:	68 18 00 00 00       	pushq  $0x18
  400bdb:	e9 60 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400be0 <fprintf@plt>:
  400be0:	ff 25 fa 27 20 00    	jmpq   *0x2027fa(%rip)        # 6033e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400be6:	68 19 00 00 00       	pushq  $0x19
  400beb:	e9 50 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400bf0 <write@plt>:
  400bf0:	ff 25 f2 27 20 00    	jmpq   *0x2027f2(%rip)        # 6033e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400bf6:	68 1a 00 00 00       	pushq  $0x1a
  400bfb:	e9 40 fe ff ff       	jmpq   400a40 <_init+0x18>

0000000000400c00 <fflush@plt>:
  400c00:	ff 25 ea 27 20 00    	jmpq   *0x2027ea(%rip)        # 6033f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400c06:	68 1b 00 00 00       	pushq  $0x1b
  400c0b:	e9 30 fe ff ff       	jmpq   400a40 <_init+0x18>

Disassembly of section .text:

0000000000400c10 <_start>:
  400c10:	31 ed                	xor    %ebp,%ebp
  400c12:	49 89 d1             	mov    %rdx,%r9
  400c15:	5e                   	pop    %rsi
  400c16:	48 89 e2             	mov    %rsp,%rdx
  400c19:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400c1d:	50                   	push   %rax
  400c1e:	54                   	push   %rsp
  400c1f:	49 c7 c0 20 24 40 00 	mov    $0x402420,%r8
  400c26:	48 c7 c1 30 24 40 00 	mov    $0x402430,%rcx
  400c2d:	48 c7 c7 e8 0c 40 00 	mov    $0x400ce8,%rdi
  400c34:	e8 a7 fe ff ff       	callq  400ae0 <__libc_start_main@plt>
  400c39:	f4                   	hlt    
  400c3a:	90                   	nop
  400c3b:	90                   	nop

0000000000400c3c <call_gmon_start>:
  400c3c:	48 83 ec 08          	sub    $0x8,%rsp
  400c40:	48 8b 05 b1 26 20 00 	mov    0x2026b1(%rip),%rax        # 6032f8 <_DYNAMIC+0x190>
  400c47:	48 85 c0             	test   %rax,%rax
  400c4a:	74 02                	je     400c4e <call_gmon_start+0x12>
  400c4c:	ff d0                	callq  *%rax
  400c4e:	48 83 c4 08          	add    $0x8,%rsp
  400c52:	c3                   	retq   
  400c53:	90                   	nop
  400c54:	90                   	nop
  400c55:	90                   	nop
  400c56:	90                   	nop
  400c57:	90                   	nop
  400c58:	90                   	nop
  400c59:	90                   	nop
  400c5a:	90                   	nop
  400c5b:	90                   	nop
  400c5c:	90                   	nop
  400c5d:	90                   	nop
  400c5e:	90                   	nop
  400c5f:	90                   	nop

0000000000400c60 <__do_global_dtors_aux>:
  400c60:	55                   	push   %rbp
  400c61:	48 89 e5             	mov    %rsp,%rbp
  400c64:	53                   	push   %rbx
  400c65:	48 83 ec 08          	sub    $0x8,%rsp
  400c69:	80 3d b0 30 20 00 00 	cmpb   $0x0,0x2030b0(%rip)        # 603d20 <completed.6145>
  400c70:	75 44                	jne    400cb6 <__do_global_dtors_aux+0x56>
  400c72:	b8 58 31 60 00       	mov    $0x603158,%eax
  400c77:	48 2d 50 31 60 00    	sub    $0x603150,%rax
  400c7d:	48 c1 f8 03          	sar    $0x3,%rax
  400c81:	48 8d 58 ff          	lea    -0x1(%rax),%rbx
  400c85:	48 8b 05 8c 30 20 00 	mov    0x20308c(%rip),%rax        # 603d18 <dtor_idx.6147>
  400c8c:	48 39 c3             	cmp    %rax,%rbx
  400c8f:	76 1e                	jbe    400caf <__do_global_dtors_aux+0x4f>
  400c91:	48 83 c0 01          	add    $0x1,%rax
  400c95:	48 89 05 7c 30 20 00 	mov    %rax,0x20307c(%rip)        # 603d18 <dtor_idx.6147>
  400c9c:	ff 14 c5 50 31 60 00 	callq  *0x603150(,%rax,8)
  400ca3:	48 8b 05 6e 30 20 00 	mov    0x20306e(%rip),%rax        # 603d18 <dtor_idx.6147>
  400caa:	48 39 c3             	cmp    %rax,%rbx
  400cad:	77 e2                	ja     400c91 <__do_global_dtors_aux+0x31>
  400caf:	c6 05 6a 30 20 00 01 	movb   $0x1,0x20306a(%rip)        # 603d20 <completed.6145>
  400cb6:	48 83 c4 08          	add    $0x8,%rsp
  400cba:	5b                   	pop    %rbx
  400cbb:	c9                   	leaveq 
  400cbc:	c3                   	retq   
  400cbd:	0f 1f 00             	nopl   (%rax)

0000000000400cc0 <frame_dummy>:
  400cc0:	55                   	push   %rbp
  400cc1:	48 83 3d 97 24 20 00 	cmpq   $0x0,0x202497(%rip)        # 603160 <__JCR_END__>
  400cc8:	00 
  400cc9:	48 89 e5             	mov    %rsp,%rbp
  400ccc:	74 16                	je     400ce4 <frame_dummy+0x24>
  400cce:	b8 00 00 00 00       	mov    $0x0,%eax
  400cd3:	48 85 c0             	test   %rax,%rax
  400cd6:	74 0c                	je     400ce4 <frame_dummy+0x24>
  400cd8:	bf 60 31 60 00       	mov    $0x603160,%edi
  400cdd:	49 89 c3             	mov    %rax,%r11
  400ce0:	c9                   	leaveq 
  400ce1:	41 ff e3             	jmpq   *%r11
  400ce4:	c9                   	leaveq 
  400ce5:	c3                   	retq   
  400ce6:	90                   	nop
  400ce7:	90                   	nop

0000000000400ce8 <main>:
  400ce8:	53                   	push   %rbx
  400ce9:	48 89 f3             	mov    %rsi,%rbx
  400cec:	83 ff 01             	cmp    $0x1,%edi
  400cef:	75 10                	jne    400d01 <main+0x19>
  400cf1:	48 8b 05 08 30 20 00 	mov    0x203008(%rip),%rax        # 603d00 <__bss_start>
  400cf8:	48 89 05 29 30 20 00 	mov    %rax,0x203029(%rip)        # 603d28 <infile>
  400cff:	eb 56                	jmp    400d57 <main+0x6f>
  400d01:	83 ff 02             	cmp    $0x2,%edi
  400d04:	75 35                	jne    400d3b <main+0x53>
  400d06:	be 30 25 40 00       	mov    $0x402530,%esi
  400d0b:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  400d0f:	e8 bc fd ff ff       	callq  400ad0 <fopen@plt>
  400d14:	48 89 05 0d 30 20 00 	mov    %rax,0x20300d(%rip)        # 603d28 <infile>
  400d1b:	48 85 c0             	test   %rax,%rax
  400d1e:	75 37                	jne    400d57 <main+0x6f>
  400d20:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400d24:	48 8b 33             	mov    (%rbx),%rsi
  400d27:	bf 32 25 40 00       	mov    $0x402532,%edi
  400d2c:	e8 1f fd ff ff       	callq  400a50 <printf@plt>
  400d31:	bf 08 00 00 00       	mov    $0x8,%edi
  400d36:	e8 65 fd ff ff       	callq  400aa0 <exit@plt>
  400d3b:	48 8b 36             	mov    (%rsi),%rsi
  400d3e:	bf 4f 25 40 00       	mov    $0x40254f,%edi
  400d43:	b8 00 00 00 00       	mov    $0x0,%eax
  400d48:	e8 03 fd ff ff       	callq  400a50 <printf@plt>
  400d4d:	bf 08 00 00 00       	mov    $0x8,%edi
  400d52:	e8 49 fd ff ff       	callq  400aa0 <exit@plt>
  400d57:	e8 05 09 00 00       	callq  401661 <initialize_bomb>
  400d5c:	bf b8 25 40 00       	mov    $0x4025b8,%edi
  400d61:	e8 2a fd ff ff       	callq  400a90 <puts@plt>
  400d66:	bf f8 25 40 00       	mov    $0x4025f8,%edi
  400d6b:	e8 20 fd ff ff       	callq  400a90 <puts@plt>
  400d70:	e8 c2 07 00 00       	callq  401537 <read_line>
  400d75:	48 89 c7             	mov    %rax,%rdi
  400d78:	e8 b1 04 00 00       	callq  40122e <phase_1>
  400d7d:	e8 33 06 00 00       	callq  4013b5 <phase_defused>
  400d82:	bf 28 26 40 00       	mov    $0x402628,%edi
  400d87:	e8 04 fd ff ff       	callq  400a90 <puts@plt>
  400d8c:	e8 a6 07 00 00       	callq  401537 <read_line>
  400d91:	48 89 c7             	mov    %rax,%rdi
  400d94:	e8 5f 02 00 00       	callq  400ff8 <phase_2>
  400d99:	e8 17 06 00 00       	callq  4013b5 <phase_defused>
  400d9e:	bf 69 25 40 00       	mov    $0x402569,%edi
  400da3:	e8 e8 fc ff ff       	callq  400a90 <puts@plt>
  400da8:	e8 8a 07 00 00       	callq  401537 <read_line>
  400dad:	48 89 c7             	mov    %rax,%rdi
  400db0:	e8 2c 03 00 00       	callq  4010e1 <phase_3>
  400db5:	e8 fb 05 00 00       	callq  4013b5 <phase_defused>
  400dba:	bf 87 25 40 00       	mov    $0x402587,%edi
  400dbf:	e8 cc fc ff ff       	callq  400a90 <puts@plt>
  400dc4:	e8 6e 07 00 00       	callq  401537 <read_line>
  400dc9:	48 89 c7             	mov    %rax,%rdi
  400dcc:	e8 b0 02 00 00       	callq  401081 <phase_4>
  400dd1:	e8 df 05 00 00       	callq  4013b5 <phase_defused>
  400dd6:	bf 58 26 40 00       	mov    $0x402658,%edi
  400ddb:	e8 b0 fc ff ff       	callq  400a90 <puts@plt>
  400de0:	e8 52 07 00 00       	callq  401537 <read_line>
  400de5:	48 89 c7             	mov    %rax,%rdi
  400de8:	e8 4f 02 00 00       	callq  40103c <phase_5>
  400ded:	e8 c3 05 00 00       	callq  4013b5 <phase_defused>
  400df2:	bf 96 25 40 00       	mov    $0x402596,%edi
  400df7:	e8 94 fc ff ff       	callq  400a90 <puts@plt>
  400dfc:	e8 36 07 00 00       	callq  401537 <read_line>
  400e01:	48 89 c7             	mov    %rax,%rdi
  400e04:	e8 da 00 00 00       	callq  400ee3 <phase_6>
  400e09:	e8 a7 05 00 00       	callq  4013b5 <phase_defused>
  400e0e:	b8 00 00 00 00       	mov    $0x0,%eax
  400e13:	5b                   	pop    %rbx
  400e14:	c3                   	retq   
  400e15:	90                   	nop
  400e16:	90                   	nop
  400e17:	90                   	nop
  400e18:	90                   	nop
  400e19:	90                   	nop
  400e1a:	90                   	nop
  400e1b:	90                   	nop
  400e1c:	90                   	nop
  400e1d:	90                   	nop
  400e1e:	90                   	nop
  400e1f:	90                   	nop

0000000000400e20 <func4>:
  400e20:	89 d1                	mov    %edx,%ecx
  400e22:	29 f2                	sub    %esi,%edx
  400e24:	89 d0                	mov    %edx,%eax
  400e26:	c1 e8 1f             	shr    $0x1f,%eax
  400e29:	01 d0                	add    %edx,%eax
  400e2b:	d1 f8                	sar    %eax
  400e2d:	01 f0                	add    %esi,%eax
  400e2f:	39 f8                	cmp    %edi,%eax
  400e31:	7e 0d                	jle    400e40 <func4+0x20>
  400e33:	8d 50 ff             	lea    -0x1(%rax),%edx
  400e36:	e8 e5 ff ff ff       	callq  400e20 <func4>
  400e3b:	8d 14 00             	lea    (%rax,%rax,1),%edx
  400e3e:	eb 17                	jmp    400e57 <func4+0x37>
  400e40:	ba 00 00 00 00       	mov    $0x0,%edx
  400e45:	39 f8                	cmp    %edi,%eax
  400e47:	7d 0e                	jge    400e57 <func4+0x37>
  400e49:	8d 70 01             	lea    0x1(%rax),%esi
  400e4c:	89 ca                	mov    %ecx,%edx
  400e4e:	e8 cd ff ff ff       	callq  400e20 <func4>
  400e53:	8d 54 00 01          	lea    0x1(%rax,%rax,1),%edx
  400e57:	89 d0                	mov    %edx,%eax
  400e59:	c3                   	retq   

0000000000400e5a <fun7>:
  400e5a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400e5f:	48 85 ff             	test   %rdi,%rdi
  400e62:	74 28                	je     400e8c <fun7+0x32>
  400e64:	8b 17                	mov    (%rdi),%edx
  400e66:	39 f2                	cmp    %esi,%edx
  400e68:	7e 0c                	jle    400e76 <fun7+0x1c>
  400e6a:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  400e6e:	e8 e7 ff ff ff       	callq  400e5a <fun7>
  400e73:	01 c0                	add    %eax,%eax
  400e75:	c3                   	retq   
  400e76:	b8 00 00 00 00       	mov    $0x0,%eax
  400e7b:	39 f2                	cmp    %esi,%edx
  400e7d:	74 0d                	je     400e8c <fun7+0x32>
  400e7f:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  400e83:	e8 d2 ff ff ff       	callq  400e5a <fun7>
  400e88:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  400e8c:	f3 c3                	repz retq 

0000000000400e8e <secret_phase>:
  400e8e:	53                   	push   %rbx
  400e8f:	e8 a3 06 00 00       	callq  401537 <read_line>
  400e94:	48 89 c7             	mov    %rax,%rdi
  400e97:	b9 00 00 00 00       	mov    $0x0,%ecx
  400e9c:	ba 0a 00 00 00       	mov    $0xa,%edx
  400ea1:	be 00 00 00 00       	mov    $0x0,%esi
  400ea6:	e8 85 fc ff ff       	callq  400b30 <__strtol_internal@plt>
  400eab:	89 c3                	mov    %eax,%ebx
  400ead:	8d 40 ff             	lea    -0x1(%rax),%eax
  400eb0:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  400eb5:	76 05                	jbe    400ebc <secret_phase+0x2e>
  400eb7:	e8 85 05 00 00       	callq  401441 <explode_bomb>
  400ebc:	89 de                	mov    %ebx,%esi
  400ebe:	bf 60 3a 60 00       	mov    $0x603a60,%edi
  400ec3:	e8 92 ff ff ff       	callq  400e5a <fun7>
  400ec8:	83 f8 01             	cmp    $0x1,%eax
  400ecb:	74 05                	je     400ed2 <secret_phase+0x44>
  400ecd:	e8 6f 05 00 00       	callq  401441 <explode_bomb>
  400ed2:	bf 80 26 40 00       	mov    $0x402680,%edi
  400ed7:	e8 b4 fb ff ff       	callq  400a90 <puts@plt>
  400edc:	e8 d4 04 00 00       	callq  4013b5 <phase_defused>
  400ee1:	5b                   	pop    %rbx
  400ee2:	c3                   	retq   

0000000000400ee3 <phase_6>:
  400ee3:	41 57                	push   %r15
  400ee5:	41 56                	push   %r14
  400ee7:	41 55                	push   %r13
  400ee9:	41 54                	push   %r12
  400eeb:	55                   	push   %rbp
  400eec:	53                   	push   %rbx
  400eed:	48 83 ec 58          	sub    $0x58,%rsp
  400ef1:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  400ef6:	e8 7c 05 00 00       	callq  401477 <read_six_numbers>
  400efb:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  400f01:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
  400f06:	4d 89 f7             	mov    %r14,%r15
  400f09:	4d 89 ec             	mov    %r13,%r12
  400f0c:	43 8b 04 ae          	mov    (%r14,%r13,4),%eax
  400f10:	83 e8 01             	sub    $0x1,%eax
  400f13:	83 f8 05             	cmp    $0x5,%eax
  400f16:	76 05                	jbe    400f1d <phase_6+0x3a>
  400f18:	e8 24 05 00 00       	callq  401441 <explode_bomb>
  400f1d:	41 8d 5d 01          	lea    0x1(%r13),%ebx
  400f21:	49 83 fd 05          	cmp    $0x5,%r13
  400f25:	0f 84 aa 00 00 00    	je     400fd5 <phase_6+0xf2>
  400f2b:	4c 89 fd             	mov    %r15,%rbp
  400f2e:	48 63 d3             	movslq %ebx,%rdx
  400f31:	42 8b 44 a5 00       	mov    0x0(%rbp,%r12,4),%eax
  400f36:	3b 44 94 30          	cmp    0x30(%rsp,%rdx,4),%eax
  400f3a:	75 05                	jne    400f41 <phase_6+0x5e>
  400f3c:	e8 00 05 00 00       	callq  401441 <explode_bomb>
  400f41:	83 c3 01             	add    $0x1,%ebx
  400f44:	83 fb 05             	cmp    $0x5,%ebx
  400f47:	7e e5                	jle    400f2e <phase_6+0x4b>
  400f49:	49 83 c5 01          	add    $0x1,%r13
  400f4d:	eb ba                	jmp    400f09 <phase_6+0x26>
  400f4f:	48 8b 76 08          	mov    0x8(%rsi),%rsi
  400f53:	83 c2 01             	add    $0x1,%edx
  400f56:	48 63 c1             	movslq %ecx,%rax
  400f59:	3b 54 84 30          	cmp    0x30(%rsp,%rax,4),%edx
  400f5d:	7c f0                	jl     400f4f <phase_6+0x6c>
  400f5f:	48 89 34 c4          	mov    %rsi,(%rsp,%rax,8)
  400f63:	83 c1 01             	add    $0x1,%ecx
  400f66:	83 f9 05             	cmp    $0x5,%ecx
  400f69:	7f 0c                	jg     400f77 <phase_6+0x94>
  400f6b:	be 90 38 60 00       	mov    $0x603890,%esi
  400f70:	ba 01 00 00 00       	mov    $0x1,%edx
  400f75:	eb df                	jmp    400f56 <phase_6+0x73>
  400f77:	48 8b 0c 24          	mov    (%rsp),%rcx
  400f7b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  400f80:	48 89 41 08          	mov    %rax,0x8(%rcx)
  400f84:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  400f89:	48 89 50 08          	mov    %rdx,0x8(%rax)
  400f8d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400f92:	48 89 42 08          	mov    %rax,0x8(%rdx)
  400f96:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
  400f9b:	48 89 50 08          	mov    %rdx,0x8(%rax)
  400f9f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  400fa4:	48 89 42 08          	mov    %rax,0x8(%rdx)
  400fa8:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  400faf:	00 
  400fb0:	48 89 cb             	mov    %rcx,%rbx
  400fb3:	bd 00 00 00 00       	mov    $0x0,%ebp
  400fb8:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400fbc:	8b 03                	mov    (%rbx),%eax
  400fbe:	3b 02                	cmp    (%rdx),%eax
  400fc0:	7d 05                	jge    400fc7 <phase_6+0xe4>
  400fc2:	e8 7a 04 00 00       	callq  401441 <explode_bomb>
  400fc7:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  400fcb:	83 c5 01             	add    $0x1,%ebp
  400fce:	83 fd 05             	cmp    $0x5,%ebp
  400fd1:	74 16                	je     400fe9 <phase_6+0x106>
  400fd3:	eb e3                	jmp    400fb8 <phase_6+0xd5>
  400fd5:	be 90 38 60 00       	mov    $0x603890,%esi
  400fda:	ba 01 00 00 00       	mov    $0x1,%edx
  400fdf:	b9 00 00 00 00       	mov    $0x0,%ecx
  400fe4:	e9 6d ff ff ff       	jmpq   400f56 <phase_6+0x73>
  400fe9:	48 83 c4 58          	add    $0x58,%rsp
  400fed:	5b                   	pop    %rbx
  400fee:	5d                   	pop    %rbp
  400fef:	41 5c                	pop    %r12
  400ff1:	41 5d                	pop    %r13
  400ff3:	41 5e                	pop    %r14
  400ff5:	41 5f                	pop    %r15
  400ff7:	c3                   	retq   

0000000000400ff8 <phase_2>:
  400ff8:	55                   	push   %rbp
  400ff9:	53                   	push   %rbx
  400ffa:	48 83 ec 28          	sub    $0x28,%rsp
  400ffe:	48 89 e6             	mov    %rsp,%rsi
  401001:	e8 71 04 00 00       	callq  401477 <read_six_numbers>
  401006:	83 3c 24 00          	cmpl   $0x0,(%rsp)
  40100a:	79 05                	jns    401011 <phase_2+0x19>
  40100c:	e8 30 04 00 00       	callq  401441 <explode_bomb>
  401011:	bb 00 00 00 00       	mov    $0x0,%ebx
  401016:	48 89 e5             	mov    %rsp,%rbp
  401019:	8d 43 01             	lea    0x1(%rbx),%eax
  40101c:	03 44 9d 00          	add    0x0(%rbp,%rbx,4),%eax
  401020:	39 44 9d 04          	cmp    %eax,0x4(%rbp,%rbx,4)
  401024:	74 05                	je     40102b <phase_2+0x33>
  401026:	e8 16 04 00 00       	callq  401441 <explode_bomb>
  40102b:	48 83 c3 01          	add    $0x1,%rbx
  40102f:	48 83 fb 05          	cmp    $0x5,%rbx
  401033:	75 e4                	jne    401019 <phase_2+0x21>
  401035:	48 83 c4 28          	add    $0x28,%rsp
  401039:	5b                   	pop    %rbx
  40103a:	5d                   	pop    %rbp
  40103b:	c3                   	retq   

000000000040103c <phase_5>:
  40103c:	53                   	push   %rbx
  40103d:	48 89 fb             	mov    %rdi,%rbx
  401040:	e8 0b 02 00 00       	callq  401250 <string_length>
  401045:	83 f8 06             	cmp    $0x6,%eax
  401048:	74 05                	je     40104f <phase_5+0x13>
  40104a:	e8 f2 03 00 00       	callq  401441 <explode_bomb>
  40104f:	b9 00 00 00 00       	mov    $0x0,%ecx
  401054:	ba 00 00 00 00       	mov    $0x0,%edx
  401059:	48 0f be 04 1a       	movsbq (%rdx,%rbx,1),%rax
  40105e:	83 e0 0f             	and    $0xf,%eax
  401061:	03 0c 85 20 27 40 00 	add    0x402720(,%rax,4),%ecx
  401068:	48 83 c2 01          	add    $0x1,%rdx
  40106c:	48 83 fa 06          	cmp    $0x6,%rdx
  401070:	75 e7                	jne    401059 <phase_5+0x1d>
  401072:	83 f9 30             	cmp    $0x30,%ecx
  401075:	74 05                	je     40107c <phase_5+0x40>
  401077:	e8 c5 03 00 00       	callq  401441 <explode_bomb>
  40107c:	5b                   	pop    %rbx
  40107d:	0f 1f 00             	nopl   (%rax)
  401080:	c3                   	retq   

0000000000401081 <phase_4>:
  401081:	48 83 ec 18          	sub    $0x18,%rsp
  401085:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  40108a:	48 8d 54 24 14       	lea    0x14(%rsp),%rdx
  40108f:	be cd 27 40 00       	mov    $0x4027cd,%esi
  401094:	b8 00 00 00 00       	mov    $0x0,%eax
  401099:	e8 a2 fa ff ff       	callq  400b40 <sscanf@plt>
  40109e:	83 f8 02             	cmp    $0x2,%eax
  4010a1:	75 0f                	jne    4010b2 <phase_4+0x31>
  4010a3:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4010a7:	85 c0                	test   %eax,%eax
  4010a9:	78 07                	js     4010b2 <phase_4+0x31>
  4010ab:	83 f8 0e             	cmp    $0xe,%eax
  4010ae:	66 90                	xchg   %ax,%ax
  4010b0:	7e 05                	jle    4010b7 <phase_4+0x36>
  4010b2:	e8 8a 03 00 00       	callq  401441 <explode_bomb>
  4010b7:	8b 7c 24 14          	mov    0x14(%rsp),%edi
  4010bb:	ba 0e 00 00 00       	mov    $0xe,%edx
  4010c0:	be 00 00 00 00       	mov    $0x0,%esi
  4010c5:	e8 56 fd ff ff       	callq  400e20 <func4>
  4010ca:	83 f8 07             	cmp    $0x7,%eax
  4010cd:	75 07                	jne    4010d6 <phase_4+0x55>
  4010cf:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
  4010d4:	74 05                	je     4010db <phase_4+0x5a>
  4010d6:	e8 66 03 00 00       	callq  401441 <explode_bomb>
  4010db:	48 83 c4 18          	add    $0x18,%rsp
  4010df:	90                   	nop
  4010e0:	c3                   	retq   

00000000004010e1 <phase_3>:
  4010e1:	48 83 ec 18          	sub    $0x18,%rsp
  4010e5:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
  4010ea:	48 8d 54 24 14       	lea    0x14(%rsp),%rdx
  4010ef:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4010f4:	be c8 26 40 00       	mov    $0x4026c8,%esi
  4010f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4010fe:	e8 3d fa ff ff       	callq  400b40 <sscanf@plt>
  401103:	83 f8 02             	cmp    $0x2,%eax
  401106:	7f 05                	jg     40110d <phase_3+0x2c>
  401108:	e8 34 03 00 00       	callq  401441 <explode_bomb>
  40110d:	83 7c 24 14 07       	cmpl   $0x7,0x14(%rsp)
  401112:	0f 87 fc 00 00 00    	ja     401214 <phase_3+0x133>
  401118:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40111c:	ff 24 c5 e0 26 40 00 	jmpq   *0x4026e0(,%rax,8)
  401123:	b8 64 00 00 00       	mov    $0x64,%eax
  401128:	81 7c 24 10 d8 03 00 	cmpl   $0x3d8,0x10(%rsp)
  40112f:	00 
  401130:	0f 84 e8 00 00 00    	je     40121e <phase_3+0x13d>
  401136:	e8 06 03 00 00       	callq  401441 <explode_bomb>
  40113b:	b8 64 00 00 00       	mov    $0x64,%eax
  401140:	e9 d9 00 00 00       	jmpq   40121e <phase_3+0x13d>
  401145:	b8 73 00 00 00       	mov    $0x73,%eax
  40114a:	81 7c 24 10 29 02 00 	cmpl   $0x229,0x10(%rsp)
  401151:	00 
  401152:	0f 84 c6 00 00 00    	je     40121e <phase_3+0x13d>
  401158:	e8 e4 02 00 00       	callq  401441 <explode_bomb>
  40115d:	b8 73 00 00 00       	mov    $0x73,%eax
  401162:	e9 b7 00 00 00       	jmpq   40121e <phase_3+0x13d>
  401167:	b8 79 00 00 00       	mov    $0x79,%eax
  40116c:	81 7c 24 10 fc 01 00 	cmpl   $0x1fc,0x10(%rsp)
  401173:	00 
  401174:	0f 84 a4 00 00 00    	je     40121e <phase_3+0x13d>
  40117a:	e8 c2 02 00 00       	callq  401441 <explode_bomb>
  40117f:	b8 79 00 00 00       	mov    $0x79,%eax
  401184:	e9 95 00 00 00       	jmpq   40121e <phase_3+0x13d>
  401189:	b8 63 00 00 00       	mov    $0x63,%eax
  40118e:	81 7c 24 10 30 02 00 	cmpl   $0x230,0x10(%rsp)
  401195:	00 
  401196:	0f 84 82 00 00 00    	je     40121e <phase_3+0x13d>
  40119c:	e8 a0 02 00 00       	callq  401441 <explode_bomb>
  4011a1:	b8 63 00 00 00       	mov    $0x63,%eax
  4011a6:	eb 76                	jmp    40121e <phase_3+0x13d>
  4011a8:	b8 61 00 00 00       	mov    $0x61,%eax
  4011ad:	81 7c 24 10 46 03 00 	cmpl   $0x346,0x10(%rsp)
  4011b4:	00 
  4011b5:	74 67                	je     40121e <phase_3+0x13d>
  4011b7:	e8 85 02 00 00       	callq  401441 <explode_bomb>
  4011bc:	b8 61 00 00 00       	mov    $0x61,%eax
  4011c1:	eb 5b                	jmp    40121e <phase_3+0x13d>
  4011c3:	b8 75 00 00 00       	mov    $0x75,%eax
  4011c8:	81 7c 24 10 1d 03 00 	cmpl   $0x31d,0x10(%rsp)
  4011cf:	00 
  4011d0:	74 4c                	je     40121e <phase_3+0x13d>
  4011d2:	e8 6a 02 00 00       	callq  401441 <explode_bomb>
  4011d7:	b8 75 00 00 00       	mov    $0x75,%eax
  4011dc:	eb 40                	jmp    40121e <phase_3+0x13d>
  4011de:	b8 69 00 00 00       	mov    $0x69,%eax
  4011e3:	81 7c 24 10 e0 01 00 	cmpl   $0x1e0,0x10(%rsp)
  4011ea:	00 
  4011eb:	74 31                	je     40121e <phase_3+0x13d>
  4011ed:	e8 4f 02 00 00       	callq  401441 <explode_bomb>
  4011f2:	b8 69 00 00 00       	mov    $0x69,%eax
  4011f7:	eb 25                	jmp    40121e <phase_3+0x13d>
  4011f9:	b8 6c 00 00 00       	mov    $0x6c,%eax
  4011fe:	81 7c 24 10 84 00 00 	cmpl   $0x84,0x10(%rsp)
  401205:	00 
  401206:	74 16                	je     40121e <phase_3+0x13d>
  401208:	e8 34 02 00 00       	callq  401441 <explode_bomb>
  40120d:	b8 6c 00 00 00       	mov    $0x6c,%eax
  401212:	eb 0a                	jmp    40121e <phase_3+0x13d>
  401214:	e8 28 02 00 00       	callq  401441 <explode_bomb>
  401219:	b8 77 00 00 00       	mov    $0x77,%eax
  40121e:	3a 44 24 0f          	cmp    0xf(%rsp),%al
  401222:	74 05                	je     401229 <phase_3+0x148>
  401224:	e8 18 02 00 00       	callq  401441 <explode_bomb>
  401229:	48 83 c4 18          	add    $0x18,%rsp
  40122d:	c3                   	retq   

000000000040122e <phase_1>:
  40122e:	48 83 ec 08          	sub    $0x8,%rsp
  401232:	be a8 26 40 00       	mov    $0x4026a8,%esi
  401237:	e8 33 00 00 00       	callq  40126f <strings_not_equal>
  40123c:	85 c0                	test   %eax,%eax
  40123e:	74 05                	je     401245 <phase_1+0x17>
  401240:	e8 fc 01 00 00       	callq  401441 <explode_bomb>
  401245:	48 83 c4 08          	add    $0x8,%rsp
  401249:	c3                   	retq   
  40124a:	90                   	nop
  40124b:	90                   	nop
  40124c:	90                   	nop
  40124d:	90                   	nop
  40124e:	90                   	nop
  40124f:	90                   	nop

0000000000401250 <string_length>:
  401250:	b8 00 00 00 00       	mov    $0x0,%eax
  401255:	80 3f 00             	cmpb   $0x0,(%rdi)
  401258:	74 13                	je     40126d <string_length+0x1d>
  40125a:	48 89 fa             	mov    %rdi,%rdx
  40125d:	0f b6 42 01          	movzbl 0x1(%rdx),%eax
  401261:	48 83 c2 01          	add    $0x1,%rdx
  401265:	84 c0                	test   %al,%al
  401267:	75 f4                	jne    40125d <string_length+0xd>
  401269:	89 d0                	mov    %edx,%eax
  40126b:	29 f8                	sub    %edi,%eax
  40126d:	f3 c3                	repz retq 

000000000040126f <strings_not_equal>:
  40126f:	41 54                	push   %r12
  401271:	55                   	push   %rbp
  401272:	53                   	push   %rbx
  401273:	48 89 fd             	mov    %rdi,%rbp
  401276:	49 89 f4             	mov    %rsi,%r12
  401279:	e8 d2 ff ff ff       	callq  401250 <string_length>
  40127e:	89 c3                	mov    %eax,%ebx
  401280:	4c 89 e7             	mov    %r12,%rdi
  401283:	e8 c8 ff ff ff       	callq  401250 <string_length>
  401288:	39 c3                	cmp    %eax,%ebx
  40128a:	75 32                	jne    4012be <strings_not_equal+0x4f>
  40128c:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  401290:	84 c0                	test   %al,%al
  401292:	74 31                	je     4012c5 <strings_not_equal+0x56>
  401294:	48 89 e9             	mov    %rbp,%rcx
  401297:	4c 89 e2             	mov    %r12,%rdx
  40129a:	41 3a 04 24          	cmp    (%r12),%al
  40129e:	74 13                	je     4012b3 <strings_not_equal+0x44>
  4012a0:	eb 1c                	jmp    4012be <strings_not_equal+0x4f>
  4012a2:	0f b6 42 01          	movzbl 0x1(%rdx),%eax
  4012a6:	48 83 c1 01          	add    $0x1,%rcx
  4012aa:	48 83 c2 01          	add    $0x1,%rdx
  4012ae:	40 38 c6             	cmp    %al,%sil
  4012b1:	75 0b                	jne    4012be <strings_not_equal+0x4f>
  4012b3:	0f b6 71 01          	movzbl 0x1(%rcx),%esi
  4012b7:	40 84 f6             	test   %sil,%sil
  4012ba:	75 e6                	jne    4012a2 <strings_not_equal+0x33>
  4012bc:	eb 07                	jmp    4012c5 <strings_not_equal+0x56>
  4012be:	b8 01 00 00 00       	mov    $0x1,%eax
  4012c3:	eb 05                	jmp    4012ca <strings_not_equal+0x5b>
  4012c5:	b8 00 00 00 00       	mov    $0x0,%eax
  4012ca:	5b                   	pop    %rbx
  4012cb:	5d                   	pop    %rbp
  4012cc:	41 5c                	pop    %r12
  4012ce:	66 90                	xchg   %ax,%ax
  4012d0:	c3                   	retq   

00000000004012d1 <initialize_bomb_solve>:
  4012d1:	f3 c3                	repz retq 

00000000004012d3 <invalid_phase>:
  4012d3:	48 83 ec 08          	sub    $0x8,%rsp
  4012d7:	48 89 fe             	mov    %rdi,%rsi
  4012da:	bf 60 27 40 00       	mov    $0x402760,%edi
  4012df:	b8 00 00 00 00       	mov    $0x0,%eax
  4012e4:	e8 67 f7 ff ff       	callq  400a50 <printf@plt>
  4012e9:	bf 08 00 00 00       	mov    $0x8,%edi
  4012ee:	e8 ad f7 ff ff       	callq  400aa0 <exit@plt>

00000000004012f3 <send_msg>:
  4012f3:	55                   	push   %rbp
  4012f4:	53                   	push   %rbx
  4012f5:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  4012fc:	89 fe                	mov    %edi,%esi
  4012fe:	44 8b 05 1f 2a 20 00 	mov    0x202a1f(%rip),%r8d        # 603d24 <num_input_strings>
  401305:	49 63 c0             	movslq %r8d,%rax
  401308:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40130c:	48 c1 e0 04          	shl    $0x4,%rax
  401310:	48 8d 90 f0 3c 60 00 	lea    0x603cf0(%rax),%rdx
  401317:	48 89 d7             	mov    %rdx,%rdi
  40131a:	fc                   	cld    
  40131b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401322:	b8 00 00 00 00       	mov    $0x0,%eax
  401327:	f2 ae                	repnz scas %es:(%rdi),%al
  401329:	48 f7 d1             	not    %rcx
  40132c:	48 83 c1 63          	add    $0x63,%rcx
  401330:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401337:	76 14                	jbe    40134d <send_msg+0x5a>
  401339:	bf 48 29 40 00       	mov    $0x402948,%edi
  40133e:	e8 0d f7 ff ff       	callq  400a50 <printf@plt>
  401343:	bf 08 00 00 00       	mov    $0x8,%edi
  401348:	e8 53 f7 ff ff       	callq  400aa0 <exit@plt>
  40134d:	85 f6                	test   %esi,%esi
  40134f:	b9 79 27 40 00       	mov    $0x402779,%ecx
  401354:	b8 71 27 40 00       	mov    $0x402771,%eax
  401359:	48 0f 45 c8          	cmovne %rax,%rcx
  40135d:	48 8d 9c 24 00 20 00 	lea    0x2000(%rsp),%rbx
  401364:	00 
  401365:	49 89 d1             	mov    %rdx,%r9
  401368:	8b 15 b2 20 20 00    	mov    0x2020b2(%rip),%edx        # 603420 <bomb_id>
  40136e:	be 82 27 40 00       	mov    $0x402782,%esi
  401373:	48 89 df             	mov    %rbx,%rdi
  401376:	b8 00 00 00 00       	mov    $0x0,%eax
  40137b:	e8 a0 f7 ff ff       	callq  400b20 <sprintf@plt>
  401380:	48 89 e1             	mov    %rsp,%rcx
  401383:	ba 00 00 00 00       	mov    $0x0,%edx
  401388:	48 89 de             	mov    %rbx,%rsi
  40138b:	bf 40 34 60 00       	mov    $0x603440,%edi
  401390:	e8 db 0f 00 00       	callq  402370 <driver_post>
  401395:	85 c0                	test   %eax,%eax
  401397:	79 12                	jns    4013ab <send_msg+0xb8>
  401399:	48 89 e7             	mov    %rsp,%rdi
  40139c:	e8 ef f6 ff ff       	callq  400a90 <puts@plt>
  4013a1:	bf 00 00 00 00       	mov    $0x0,%edi
  4013a6:	e8 f5 f6 ff ff       	callq  400aa0 <exit@plt>
  4013ab:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  4013b2:	5b                   	pop    %rbx
  4013b3:	5d                   	pop    %rbp
  4013b4:	c3                   	retq   

00000000004013b5 <phase_defused>:
  4013b5:	53                   	push   %rbx
  4013b6:	48 83 ec 60          	sub    $0x60,%rsp
  4013ba:	bf 01 00 00 00       	mov    $0x1,%edi
  4013bf:	e8 2f ff ff ff       	callq  4012f3 <send_msg>
  4013c4:	83 3d 59 29 20 00 06 	cmpl   $0x6,0x202959(%rip)        # 603d24 <num_input_strings>
  4013cb:	75 6e                	jne    40143b <phase_defused+0x86>
  4013cd:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  4013d2:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  4013d7:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  4013dc:	49 89 d8             	mov    %rbx,%r8
  4013df:	be 8e 27 40 00       	mov    $0x40278e,%esi
  4013e4:	bf 30 3e 60 00       	mov    $0x603e30,%edi
  4013e9:	b8 00 00 00 00       	mov    $0x0,%eax
  4013ee:	e8 4d f7 ff ff       	callq  400b40 <sscanf@plt>
  4013f3:	83 f8 03             	cmp    $0x3,%eax
  4013f6:	75 2f                	jne    401427 <phase_defused+0x72>
  4013f8:	be 97 27 40 00       	mov    $0x402797,%esi
  4013fd:	48 89 df             	mov    %rbx,%rdi
  401400:	e8 6a fe ff ff       	callq  40126f <strings_not_equal>
  401405:	85 c0                	test   %eax,%eax
  401407:	75 1e                	jne    401427 <phase_defused+0x72>
  401409:	bf 70 29 40 00       	mov    $0x402970,%edi
  40140e:	e8 7d f6 ff ff       	callq  400a90 <puts@plt>
  401413:	bf 98 29 40 00       	mov    $0x402998,%edi
  401418:	e8 73 f6 ff ff       	callq  400a90 <puts@plt>
  40141d:	b8 00 00 00 00       	mov    $0x0,%eax
  401422:	e8 67 fa ff ff       	callq  400e8e <secret_phase>
  401427:	bf d0 29 40 00       	mov    $0x4029d0,%edi
  40142c:	e8 5f f6 ff ff       	callq  400a90 <puts@plt>
  401431:	bf 00 2a 40 00       	mov    $0x402a00,%edi
  401436:	e8 55 f6 ff ff       	callq  400a90 <puts@plt>
  40143b:	48 83 c4 60          	add    $0x60,%rsp
  40143f:	5b                   	pop    %rbx
  401440:	c3                   	retq   

0000000000401441 <explode_bomb>:
  401441:	48 83 ec 08          	sub    $0x8,%rsp
  401445:	bf a1 27 40 00       	mov    $0x4027a1,%edi
  40144a:	e8 41 f6 ff ff       	callq  400a90 <puts@plt>
  40144f:	bf aa 27 40 00       	mov    $0x4027aa,%edi
  401454:	e8 37 f6 ff ff       	callq  400a90 <puts@plt>
  401459:	bf 00 00 00 00       	mov    $0x0,%edi
  40145e:	e8 90 fe ff ff       	callq  4012f3 <send_msg>
  401463:	bf 48 2a 40 00       	mov    $0x402a48,%edi
  401468:	e8 23 f6 ff ff       	callq  400a90 <puts@plt>
  40146d:	bf 08 00 00 00       	mov    $0x8,%edi
  401472:	e8 29 f6 ff ff       	callq  400aa0 <exit@plt>

0000000000401477 <read_six_numbers>:
  401477:	48 83 ec 18          	sub    $0x18,%rsp
  40147b:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  40147f:	48 8d 46 14          	lea    0x14(%rsi),%rax
  401483:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401488:	48 8d 46 10          	lea    0x10(%rsi),%rax
  40148c:	48 89 04 24          	mov    %rax,(%rsp)
  401490:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  401494:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401498:	48 89 f2             	mov    %rsi,%rdx
  40149b:	be c1 27 40 00       	mov    $0x4027c1,%esi
  4014a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a5:	e8 96 f6 ff ff       	callq  400b40 <sscanf@plt>
  4014aa:	83 f8 05             	cmp    $0x5,%eax
  4014ad:	7f 05                	jg     4014b4 <read_six_numbers+0x3d>
  4014af:	e8 8d ff ff ff       	callq  401441 <explode_bomb>
  4014b4:	48 83 c4 18          	add    $0x18,%rsp
  4014b8:	c3                   	retq   

00000000004014b9 <blank_line>:
  4014b9:	55                   	push   %rbp
  4014ba:	53                   	push   %rbx
  4014bb:	48 83 ec 08          	sub    $0x8,%rsp
  4014bf:	48 89 fd             	mov    %rdi,%rbp
  4014c2:	eb 1e                	jmp    4014e2 <blank_line+0x29>
  4014c4:	e8 47 f6 ff ff       	callq  400b10 <__ctype_b_loc@plt>
  4014c9:	48 0f be d3          	movsbq %bl,%rdx
  4014cd:	48 8b 00             	mov    (%rax),%rax
  4014d0:	f6 44 50 01 20       	testb  $0x20,0x1(%rax,%rdx,2)
  4014d5:	75 07                	jne    4014de <blank_line+0x25>
  4014d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4014dc:	eb 11                	jmp    4014ef <blank_line+0x36>
  4014de:	48 83 c5 01          	add    $0x1,%rbp
  4014e2:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  4014e6:	84 db                	test   %bl,%bl
  4014e8:	75 da                	jne    4014c4 <blank_line+0xb>
  4014ea:	b8 01 00 00 00       	mov    $0x1,%eax
  4014ef:	48 83 c4 08          	add    $0x8,%rsp
  4014f3:	5b                   	pop    %rbx
  4014f4:	5d                   	pop    %rbp
  4014f5:	c3                   	retq   

00000000004014f6 <skip>:
  4014f6:	53                   	push   %rbx
  4014f7:	48 63 3d 26 28 20 00 	movslq 0x202826(%rip),%rdi        # 603d24 <num_input_strings>
  4014fe:	48 8d 3c bf          	lea    (%rdi,%rdi,4),%rdi
  401502:	48 c1 e7 04          	shl    $0x4,%rdi
  401506:	48 81 c7 40 3d 60 00 	add    $0x603d40,%rdi
  40150d:	48 8b 15 14 28 20 00 	mov    0x202814(%rip),%rdx        # 603d28 <infile>
  401514:	be 50 00 00 00       	mov    $0x50,%esi
  401519:	e8 d2 f5 ff ff       	callq  400af0 <fgets@plt>
  40151e:	48 89 c3             	mov    %rax,%rbx
  401521:	48 85 c0             	test   %rax,%rax
  401524:	74 0c                	je     401532 <skip+0x3c>
  401526:	48 89 c7             	mov    %rax,%rdi
  401529:	e8 8b ff ff ff       	callq  4014b9 <blank_line>
  40152e:	85 c0                	test   %eax,%eax
  401530:	75 c5                	jne    4014f7 <skip+0x1>
  401532:	48 89 d8             	mov    %rbx,%rax
  401535:	5b                   	pop    %rbx
  401536:	c3                   	retq   

0000000000401537 <read_line>:
  401537:	53                   	push   %rbx
  401538:	b8 00 00 00 00       	mov    $0x0,%eax
  40153d:	e8 b4 ff ff ff       	callq  4014f6 <skip>
  401542:	48 85 c0             	test   %rax,%rax
  401545:	75 6e                	jne    4015b5 <read_line+0x7e>
  401547:	48 8b 05 b2 27 20 00 	mov    0x2027b2(%rip),%rax        # 603d00 <__bss_start>
  40154e:	48 39 05 d3 27 20 00 	cmp    %rax,0x2027d3(%rip)        # 603d28 <infile>
  401555:	75 14                	jne    40156b <read_line+0x34>
  401557:	bf d3 27 40 00       	mov    $0x4027d3,%edi
  40155c:	e8 2f f5 ff ff       	callq  400a90 <puts@plt>
  401561:	bf 08 00 00 00       	mov    $0x8,%edi
  401566:	e8 35 f5 ff ff       	callq  400aa0 <exit@plt>
  40156b:	bf f1 27 40 00       	mov    $0x4027f1,%edi
  401570:	e8 2b f6 ff ff       	callq  400ba0 <getenv@plt>
  401575:	48 85 c0             	test   %rax,%rax
  401578:	74 0a                	je     401584 <read_line+0x4d>
  40157a:	bf 00 00 00 00       	mov    $0x0,%edi
  40157f:	e8 1c f5 ff ff       	callq  400aa0 <exit@plt>
  401584:	48 8b 05 75 27 20 00 	mov    0x202775(%rip),%rax        # 603d00 <__bss_start>
  40158b:	48 89 05 96 27 20 00 	mov    %rax,0x202796(%rip)        # 603d28 <infile>
  401592:	b8 00 00 00 00       	mov    $0x0,%eax
  401597:	e8 5a ff ff ff       	callq  4014f6 <skip>
  40159c:	48 85 c0             	test   %rax,%rax
  40159f:	75 14                	jne    4015b5 <read_line+0x7e>
  4015a1:	bf d3 27 40 00       	mov    $0x4027d3,%edi
  4015a6:	e8 e5 f4 ff ff       	callq  400a90 <puts@plt>
  4015ab:	bf 00 00 00 00       	mov    $0x0,%edi
  4015b0:	e8 eb f4 ff ff       	callq  400aa0 <exit@plt>
  4015b5:	48 63 05 68 27 20 00 	movslq 0x202768(%rip),%rax        # 603d24 <num_input_strings>
  4015bc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4015c0:	48 c1 e0 04          	shl    $0x4,%rax
  4015c4:	48 8d b8 40 3d 60 00 	lea    0x603d40(%rax),%rdi
  4015cb:	fc                   	cld    
  4015cc:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4015d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4015d8:	f2 ae                	repnz scas %es:(%rdi),%al
  4015da:	48 f7 d1             	not    %rcx
  4015dd:	8d 59 ff             	lea    -0x1(%rcx),%ebx
  4015e0:	83 fb 4e             	cmp    $0x4e,%ebx
  4015e3:	7e 50                	jle    401635 <read_line+0xfe>
  4015e5:	bf fc 27 40 00       	mov    $0x4027fc,%edi
  4015ea:	e8 a1 f4 ff ff       	callq  400a90 <puts@plt>
  4015ef:	8b 05 2f 27 20 00    	mov    0x20272f(%rip),%eax        # 603d24 <num_input_strings>
  4015f5:	8d 50 01             	lea    0x1(%rax),%edx
  4015f8:	89 15 26 27 20 00    	mov    %edx,0x202726(%rip)        # 603d24 <num_input_strings>
  4015fe:	48 98                	cltq   
  401600:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401604:	48 c1 e0 04          	shl    $0x4,%rax
  401608:	c7 80 40 3d 60 00 2a 	movl   $0x742a2a2a,0x603d40(%rax)
  40160f:	2a 2a 74 
  401612:	c7 80 44 3d 60 00 72 	movl   $0x636e7572,0x603d44(%rax)
  401619:	75 6e 63 
  40161c:	c7 80 48 3d 60 00 61 	movl   $0x64657461,0x603d48(%rax)
  401623:	74 65 64 
  401626:	c7 80 4c 3d 60 00 2a 	movl   $0x2a2a2a,0x603d4c(%rax)
  40162d:	2a 2a 00 
  401630:	e8 0c fe ff ff       	callq  401441 <explode_bomb>
  401635:	8b 0d e9 26 20 00    	mov    0x2026e9(%rip),%ecx        # 603d24 <num_input_strings>
  40163b:	8d 53 ff             	lea    -0x1(%rbx),%edx
  40163e:	48 63 d2             	movslq %edx,%rdx
  401641:	48 63 c1             	movslq %ecx,%rax
  401644:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401648:	48 c1 e0 04          	shl    $0x4,%rax
  40164c:	48 05 40 3d 60 00    	add    $0x603d40,%rax
  401652:	c6 04 10 00          	movb   $0x0,(%rax,%rdx,1)
  401656:	83 c1 01             	add    $0x1,%ecx
  401659:	89 0d c5 26 20 00    	mov    %ecx,0x2026c5(%rip)        # 603d24 <num_input_strings>
  40165f:	5b                   	pop    %rbx
  401660:	c3                   	retq   

0000000000401661 <initialize_bomb>:
  401661:	55                   	push   %rbp
  401662:	53                   	push   %rbx
  401663:	48 81 ec 48 20 00 00 	sub    $0x2048,%rsp
  40166a:	be 23 17 40 00       	mov    $0x401723,%esi
  40166f:	bf 02 00 00 00       	mov    $0x2,%edi
  401674:	e8 07 f5 ff ff       	callq  400b80 <signal@plt>
  401679:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401680:	00 
  401681:	be 40 00 00 00       	mov    $0x40,%esi
  401686:	e8 e5 f4 ff ff       	callq  400b70 <gethostname@plt>
  40168b:	85 c0                	test   %eax,%eax
  40168d:	75 1b                	jne    4016aa <initialize_bomb+0x49>
  40168f:	48 8b 3d ea 23 20 00 	mov    0x2023ea(%rip),%rdi        # 603a80 <host_table>
  401696:	bb 00 00 00 00       	mov    $0x0,%ebx
  40169b:	48 8d ac 24 00 20 00 	lea    0x2000(%rsp),%rbp
  4016a2:	00 
  4016a3:	48 85 ff             	test   %rdi,%rdi
  4016a6:	75 16                	jne    4016be <initialize_bomb+0x5d>
  4016a8:	eb 5b                	jmp    401705 <initialize_bomb+0xa4>
  4016aa:	bf 70 2a 40 00       	mov    $0x402a70,%edi
  4016af:	e8 dc f3 ff ff       	callq  400a90 <puts@plt>
  4016b4:	bf 08 00 00 00       	mov    $0x8,%edi
  4016b9:	e8 e2 f3 ff ff       	callq  400aa0 <exit@plt>
  4016be:	48 89 ee             	mov    %rbp,%rsi
  4016c1:	e8 ea f3 ff ff       	callq  400ab0 <strcasecmp@plt>
  4016c6:	85 c0                	test   %eax,%eax
  4016c8:	74 13                	je     4016dd <initialize_bomb+0x7c>
  4016ca:	48 8b 3c dd 88 3a 60 	mov    0x603a88(,%rbx,8),%rdi
  4016d1:	00 
  4016d2:	48 83 c3 01          	add    $0x1,%rbx
  4016d6:	48 85 ff             	test   %rdi,%rdi
  4016d9:	74 2a                	je     401705 <initialize_bomb+0xa4>
  4016db:	eb e1                	jmp    4016be <initialize_bomb+0x5d>
  4016dd:	48 89 e7             	mov    %rsp,%rdi
  4016e0:	e8 9b 00 00 00       	callq  401780 <init_driver>
  4016e5:	85 c0                	test   %eax,%eax
  4016e7:	79 30                	jns    401719 <initialize_bomb+0xb8>
  4016e9:	48 89 e6             	mov    %rsp,%rsi
  4016ec:	bf 17 28 40 00       	mov    $0x402817,%edi
  4016f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f6:	e8 55 f3 ff ff       	callq  400a50 <printf@plt>
  4016fb:	bf 08 00 00 00       	mov    $0x8,%edi
  401700:	e8 9b f3 ff ff       	callq  400aa0 <exit@plt>
  401705:	bf a8 2a 40 00       	mov    $0x402aa8,%edi
  40170a:	e8 81 f3 ff ff       	callq  400a90 <puts@plt>
  40170f:	bf 08 00 00 00       	mov    $0x8,%edi
  401714:	e8 87 f3 ff ff       	callq  400aa0 <exit@plt>
  401719:	48 81 c4 48 20 00 00 	add    $0x2048,%rsp
  401720:	5b                   	pop    %rbx
  401721:	5d                   	pop    %rbp
  401722:	c3                   	retq   

0000000000401723 <sig_handler>:
  401723:	48 83 ec 08          	sub    $0x8,%rsp
  401727:	bf e0 2a 40 00       	mov    $0x402ae0,%edi
  40172c:	e8 5f f3 ff ff       	callq  400a90 <puts@plt>
  401731:	bf 03 00 00 00       	mov    $0x3,%edi
  401736:	e8 15 f4 ff ff       	callq  400b50 <sleep@plt>
  40173b:	bf 31 28 40 00       	mov    $0x402831,%edi
  401740:	b8 00 00 00 00       	mov    $0x0,%eax
  401745:	e8 06 f3 ff ff       	callq  400a50 <printf@plt>
  40174a:	48 8b 3d bf 25 20 00 	mov    0x2025bf(%rip),%rdi        # 603d10 <stdout@@GLIBC_2.2.5>
  401751:	e8 aa f4 ff ff       	callq  400c00 <fflush@plt>
  401756:	bf 01 00 00 00       	mov    $0x1,%edi
  40175b:	e8 f0 f3 ff ff       	callq  400b50 <sleep@plt>
  401760:	bf 39 28 40 00       	mov    $0x402839,%edi
  401765:	e8 26 f3 ff ff       	callq  400a90 <puts@plt>
  40176a:	bf 10 00 00 00       	mov    $0x10,%edi
  40176f:	e8 2c f3 ff ff       	callq  400aa0 <exit@plt>
  401774:	90                   	nop
  401775:	90                   	nop
  401776:	90                   	nop
  401777:	90                   	nop
  401778:	90                   	nop
  401779:	90                   	nop
  40177a:	90                   	nop
  40177b:	90                   	nop
  40177c:	90                   	nop
  40177d:	90                   	nop
  40177e:	90                   	nop
  40177f:	90                   	nop

0000000000401780 <init_driver>:
  401780:	41 54                	push   %r12
  401782:	55                   	push   %rbp
  401783:	53                   	push   %rbx
  401784:	48 83 ec 10          	sub    $0x10,%rsp
  401788:	48 89 fd             	mov    %rdi,%rbp
  40178b:	be 01 00 00 00       	mov    $0x1,%esi
  401790:	bf 0d 00 00 00       	mov    $0xd,%edi
  401795:	e8 e6 f3 ff ff       	callq  400b80 <signal@plt>
  40179a:	be 01 00 00 00       	mov    $0x1,%esi
  40179f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4017a4:	e8 d7 f3 ff ff       	callq  400b80 <signal@plt>
  4017a9:	be 01 00 00 00       	mov    $0x1,%esi
  4017ae:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4017b3:	e8 c8 f3 ff ff       	callq  400b80 <signal@plt>
  4017b8:	ba 00 00 00 00       	mov    $0x0,%edx
  4017bd:	be 01 00 00 00       	mov    $0x1,%esi
  4017c2:	bf 02 00 00 00       	mov    $0x2,%edi
  4017c7:	e8 c4 f3 ff ff       	callq  400b90 <socket@plt>
  4017cc:	41 89 c4             	mov    %eax,%r12d
  4017cf:	85 c0                	test   %eax,%eax
  4017d1:	79 4f                	jns    401822 <init_driver+0xa2>
  4017d3:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  4017da:	c7 45 04 72 3a 20 43 	movl   $0x43203a72,0x4(%rbp)
  4017e1:	c7 45 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%rbp)
  4017e8:	c7 45 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%rbp)
  4017ef:	c7 45 10 61 62 6c 65 	movl   $0x656c6261,0x10(%rbp)
  4017f6:	c7 45 14 20 74 6f 20 	movl   $0x206f7420,0x14(%rbp)
  4017fd:	c7 45 18 63 72 65 61 	movl   $0x61657263,0x18(%rbp)
  401804:	c7 45 1c 74 65 20 73 	movl   $0x73206574,0x1c(%rbp)
  40180b:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  401812:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  401818:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40181d:	e9 27 01 00 00       	jmpq   401949 <init_driver+0x1c9>
  401822:	bf 38 2b 40 00       	mov    $0x402b38,%edi
  401827:	e8 54 f2 ff ff       	callq  400a80 <gethostbyname@plt>
  40182c:	48 85 c0             	test   %rax,%rax
  40182f:	75 69                	jne    40189a <init_driver+0x11a>
  401831:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  401838:	c7 45 04 72 3a 20 44 	movl   $0x44203a72,0x4(%rbp)
  40183f:	c7 45 08 4e 53 20 69 	movl   $0x6920534e,0x8(%rbp)
  401846:	c7 45 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%rbp)
  40184d:	c7 45 10 61 62 6c 65 	movl   $0x656c6261,0x10(%rbp)
  401854:	c7 45 14 20 74 6f 20 	movl   $0x206f7420,0x14(%rbp)
  40185b:	c7 45 18 72 65 73 6f 	movl   $0x6f736572,0x18(%rbp)
  401862:	c7 45 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%rbp)
  401869:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  401870:	c7 45 24 65 72 20 61 	movl   $0x61207265,0x24(%rbp)
  401877:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  40187e:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  401884:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  401888:	44 89 e7             	mov    %r12d,%edi
  40188b:	e8 e0 f1 ff ff       	callq  400a70 <close@plt>
  401890:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401895:	e9 af 00 00 00       	jmpq   401949 <init_driver+0x1c9>
  40189a:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4018a1:	00 
  4018a2:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4018a9:	00 00 
  4018ab:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4018b1:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  4018b6:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4018ba:	48 8b 40 18          	mov    0x18(%rax),%rax
  4018be:	48 8b 38             	mov    (%rax),%rdi
  4018c1:	e8 3a f2 ff ff       	callq  400b00 <bcopy@plt>
  4018c6:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  4018cd:	ba 10 00 00 00       	mov    $0x10,%edx
  4018d2:	48 89 e6             	mov    %rsp,%rsi
  4018d5:	44 89 e7             	mov    %r12d,%edi
  4018d8:	e8 83 f2 ff ff       	callq  400b60 <connect@plt>
  4018dd:	85 c0                	test   %eax,%eax
  4018df:	79 51                	jns    401932 <init_driver+0x1b2>
  4018e1:	c7 45 00 45 72 72 6f 	movl   $0x6f727245,0x0(%rbp)
  4018e8:	c7 45 04 72 3a 20 55 	movl   $0x55203a72,0x4(%rbp)
  4018ef:	c7 45 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%rbp)
  4018f6:	c7 45 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%rbp)
  4018fd:	c7 45 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%rbp)
  401904:	c7 45 14 6e 65 63 74 	movl   $0x7463656e,0x14(%rbp)
  40190b:	c7 45 18 20 74 6f 20 	movl   $0x206f7420,0x18(%rbp)
  401912:	c7 45 1c 73 65 72 76 	movl   $0x76726573,0x1c(%rbp)
  401919:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  40191f:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  401923:	44 89 e7             	mov    %r12d,%edi
  401926:	e8 45 f1 ff ff       	callq  400a70 <close@plt>
  40192b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401930:	eb 17                	jmp    401949 <init_driver+0x1c9>
  401932:	44 89 e7             	mov    %r12d,%edi
  401935:	e8 36 f1 ff ff       	callq  400a70 <close@plt>
  40193a:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  401940:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  401944:	b8 00 00 00 00       	mov    $0x0,%eax
  401949:	48 83 c4 10          	add    $0x10,%rsp
  40194d:	5b                   	pop    %rbx
  40194e:	5d                   	pop    %rbp
  40194f:	41 5c                	pop    %r12
  401951:	c3                   	retq   

0000000000401952 <init_timeout>:
  401952:	53                   	push   %rbx
  401953:	89 fb                	mov    %edi,%ebx
  401955:	85 ff                	test   %edi,%edi
  401957:	74 1e                	je     401977 <init_timeout+0x25>
  401959:	be e8 23 40 00       	mov    $0x4023e8,%esi
  40195e:	bf 0e 00 00 00       	mov    $0xe,%edi
  401963:	e8 18 f2 ff ff       	callq  400b80 <signal@plt>
  401968:	85 db                	test   %ebx,%ebx
  40196a:	bf 00 00 00 00       	mov    $0x0,%edi
  40196f:	0f 49 fb             	cmovns %ebx,%edi
  401972:	e8 39 f2 ff ff       	callq  400bb0 <alarm@plt>
  401977:	5b                   	pop    %rbx
  401978:	c3                   	retq   

0000000000401979 <rio_readlineb>:
  401979:	41 57                	push   %r15
  40197b:	41 56                	push   %r14
  40197d:	41 55                	push   %r13
  40197f:	41 54                	push   %r12
  401981:	55                   	push   %rbp
  401982:	53                   	push   %rbx
  401983:	48 83 ec 18          	sub    $0x18,%rsp
  401987:	48 89 fb             	mov    %rdi,%rbx
  40198a:	49 89 d7             	mov    %rdx,%r15
  40198d:	49 89 f5             	mov    %rsi,%r13
  401990:	49 89 f6             	mov    %rsi,%r14
  401993:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401999:	48 83 fa 01          	cmp    $0x1,%rdx
  40199d:	77 3b                	ja     4019da <rio_readlineb+0x61>
  40199f:	e9 7e 00 00 00       	jmpq   401a22 <rio_readlineb+0xa9>
  4019a4:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  4019a8:	ba 00 20 00 00       	mov    $0x2000,%edx
  4019ad:	48 89 ee             	mov    %rbp,%rsi
  4019b0:	8b 3b                	mov    (%rbx),%edi
  4019b2:	e8 09 f1 ff ff       	callq  400ac0 <read@plt>
  4019b7:	89 43 04             	mov    %eax,0x4(%rbx)
  4019ba:	85 c0                	test   %eax,%eax
  4019bc:	79 14                	jns    4019d2 <rio_readlineb+0x59>
  4019be:	e8 fd f1 ff ff       	callq  400bc0 <__errno_location@plt>
  4019c3:	83 38 04             	cmpl   $0x4,(%rax)
  4019c6:	74 12                	je     4019da <rio_readlineb+0x61>
  4019c8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4019cf:	90                   	nop
  4019d0:	eb 67                	jmp    401a39 <rio_readlineb+0xc0>
  4019d2:	85 c0                	test   %eax,%eax
  4019d4:	74 5e                	je     401a34 <rio_readlineb+0xbb>
  4019d6:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4019da:	83 7b 04 00          	cmpl   $0x0,0x4(%rbx)
  4019de:	66 90                	xchg   %ax,%ax
  4019e0:	7e c2                	jle    4019a4 <rio_readlineb+0x2b>
  4019e2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4019e6:	0f b6 00             	movzbl (%rax),%eax
  4019e9:	88 44 24 17          	mov    %al,0x17(%rsp)
  4019ed:	48 83 43 08 01       	addq   $0x1,0x8(%rbx)
  4019f2:	83 6b 04 01          	subl   $0x1,0x4(%rbx)
  4019f6:	43 88 44 2c ff       	mov    %al,-0x1(%r12,%r13,1)
  4019fb:	49 83 c6 01          	add    $0x1,%r14
  4019ff:	80 7c 24 17 0a       	cmpb   $0xa,0x17(%rsp)
  401a04:	75 0f                	jne    401a15 <rio_readlineb+0x9c>
  401a06:	eb 23                	jmp    401a2b <rio_readlineb+0xb2>
  401a08:	b8 00 00 00 00       	mov    $0x0,%eax
  401a0d:	49 83 fc 01          	cmp    $0x1,%r12
  401a11:	74 31                	je     401a44 <rio_readlineb+0xcb>
  401a13:	eb 16                	jmp    401a2b <rio_readlineb+0xb2>
  401a15:	49 83 c4 01          	add    $0x1,%r12
  401a19:	4d 39 fc             	cmp    %r15,%r12
  401a1c:	75 bc                	jne    4019da <rio_readlineb+0x61>
  401a1e:	66 90                	xchg   %ax,%ax
  401a20:	eb 09                	jmp    401a2b <rio_readlineb+0xb2>
  401a22:	49 89 f6             	mov    %rsi,%r14
  401a25:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401a2b:	41 c6 06 00          	movb   $0x0,(%r14)
  401a2f:	4c 89 e0             	mov    %r12,%rax
  401a32:	eb 10                	jmp    401a44 <rio_readlineb+0xcb>
  401a34:	b8 00 00 00 00       	mov    $0x0,%eax
  401a39:	85 c0                	test   %eax,%eax
  401a3b:	74 cb                	je     401a08 <rio_readlineb+0x8f>
  401a3d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401a44:	48 83 c4 18          	add    $0x18,%rsp
  401a48:	5b                   	pop    %rbx
  401a49:	5d                   	pop    %rbp
  401a4a:	41 5c                	pop    %r12
  401a4c:	41 5d                	pop    %r13
  401a4e:	41 5e                	pop    %r14
  401a50:	41 5f                	pop    %r15
  401a52:	c3                   	retq   

0000000000401a53 <submitr>:
  401a53:	41 57                	push   %r15
  401a55:	41 56                	push   %r14
  401a57:	41 55                	push   %r13
  401a59:	41 54                	push   %r12
  401a5b:	55                   	push   %rbp
  401a5c:	53                   	push   %rbx
  401a5d:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
  401a64:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
  401a69:	89 f5                	mov    %esi,%ebp
  401a6b:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
  401a70:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  401a75:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
  401a7a:	4d 89 cf             	mov    %r9,%r15
  401a7d:	4c 8b b4 24 b0 a0 00 	mov    0xa0b0(%rsp),%r14
  401a84:	00 
  401a85:	c7 84 24 4c 20 00 00 	movl   $0x0,0x204c(%rsp)
  401a8c:	00 00 00 00 
  401a90:	ba 00 00 00 00       	mov    $0x0,%edx
  401a95:	be 01 00 00 00       	mov    $0x1,%esi
  401a9a:	bf 02 00 00 00       	mov    $0x2,%edi
  401a9f:	e8 ec f0 ff ff       	callq  400b90 <socket@plt>
  401aa4:	41 89 c5             	mov    %eax,%r13d
  401aa7:	85 c0                	test   %eax,%eax
  401aa9:	79 58                	jns    401b03 <submitr+0xb0>
  401aab:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401ab2:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401ab9:	43 
  401aba:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401ac1:	6e 
  401ac2:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401ac9:	6e 
  401aca:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401ad1:	65 
  401ad2:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401ad9:	20 
  401ada:	41 c7 46 18 63 72 65 	movl   $0x61657263,0x18(%r14)
  401ae1:	61 
  401ae2:	41 c7 46 1c 74 65 20 	movl   $0x73206574,0x1c(%r14)
  401ae9:	73 
  401aea:	41 c7 46 20 6f 63 6b 	movl   $0x656b636f,0x20(%r14)
  401af1:	65 
  401af2:	66 41 c7 46 24 74 00 	movw   $0x74,0x24(%r14)
  401af9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401afe:	e9 5b 08 00 00       	jmpq   40235e <submitr+0x90b>
  401b03:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  401b08:	e8 73 ef ff ff       	callq  400a80 <gethostbyname@plt>
  401b0d:	48 85 c0             	test   %rax,%rax
  401b10:	0f 85 85 00 00 00    	jne    401b9b <submitr+0x148>
  401b16:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401b1d:	41 c7 46 04 72 3a 20 	movl   $0x44203a72,0x4(%r14)
  401b24:	44 
  401b25:	41 c7 46 08 4e 53 20 	movl   $0x6920534e,0x8(%r14)
  401b2c:	69 
  401b2d:	41 c7 46 0c 73 20 75 	movl   $0x6e752073,0xc(%r14)
  401b34:	6e 
  401b35:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401b3c:	65 
  401b3d:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401b44:	20 
  401b45:	41 c7 46 18 72 65 73 	movl   $0x6f736572,0x18(%r14)
  401b4c:	6f 
  401b4d:	41 c7 46 1c 6c 76 65 	movl   $0x2065766c,0x1c(%r14)
  401b54:	20 
  401b55:	41 c7 46 20 41 75 74 	movl   $0x6f747541,0x20(%r14)
  401b5c:	6f 
  401b5d:	41 c7 46 24 6c 61 62 	movl   $0x2062616c,0x24(%r14)
  401b64:	20 
  401b65:	41 c7 46 28 73 65 72 	movl   $0x76726573,0x28(%r14)
  401b6c:	76 
  401b6d:	41 c7 46 2c 65 72 20 	movl   $0x61207265,0x2c(%r14)
  401b74:	61 
  401b75:	41 c7 46 30 64 64 72 	movl   $0x65726464,0x30(%r14)
  401b7c:	65 
  401b7d:	66 41 c7 46 34 73 73 	movw   $0x7373,0x34(%r14)
  401b84:	41 c6 46 36 00       	movb   $0x0,0x36(%r14)
  401b89:	44 89 ef             	mov    %r13d,%edi
  401b8c:	e8 df ee ff ff       	callq  400a70 <close@plt>
  401b91:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b96:	e9 c3 07 00 00       	jmpq   40235e <submitr+0x90b>
  401b9b:	48 8d 9c 24 60 a0 00 	lea    0xa060(%rsp),%rbx
  401ba2:	00 
  401ba3:	48 c7 84 24 60 a0 00 	movq   $0x0,0xa060(%rsp)
  401baa:	00 00 00 00 00 
  401baf:	48 c7 84 24 68 a0 00 	movq   $0x0,0xa068(%rsp)
  401bb6:	00 00 00 00 00 
  401bbb:	66 c7 84 24 60 a0 00 	movw   $0x2,0xa060(%rsp)
  401bc2:	00 02 00 
  401bc5:	48 8d 73 04          	lea    0x4(%rbx),%rsi
  401bc9:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401bcd:	48 8b 40 18          	mov    0x18(%rax),%rax
  401bd1:	48 8b 38             	mov    (%rax),%rdi
  401bd4:	e8 27 ef ff ff       	callq  400b00 <bcopy@plt>
  401bd9:	89 e8                	mov    %ebp,%eax
  401bdb:	66 c1 c8 08          	ror    $0x8,%ax
  401bdf:	66 89 84 24 62 a0 00 	mov    %ax,0xa062(%rsp)
  401be6:	00 
  401be7:	ba 10 00 00 00       	mov    $0x10,%edx
  401bec:	48 89 de             	mov    %rbx,%rsi
  401bef:	44 89 ef             	mov    %r13d,%edi
  401bf2:	e8 69 ef ff ff       	callq  400b60 <connect@plt>
  401bf7:	85 c0                	test   %eax,%eax
  401bf9:	79 75                	jns    401c70 <submitr+0x21d>
  401bfb:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401c02:	41 c7 46 04 72 3a 20 	movl   $0x55203a72,0x4(%r14)
  401c09:	55 
  401c0a:	41 c7 46 08 6e 61 62 	movl   $0x6c62616e,0x8(%r14)
  401c11:	6c 
  401c12:	41 c7 46 0c 65 20 74 	movl   $0x6f742065,0xc(%r14)
  401c19:	6f 
  401c1a:	41 c7 46 10 20 63 6f 	movl   $0x6e6f6320,0x10(%r14)
  401c21:	6e 
  401c22:	41 c7 46 14 6e 65 63 	movl   $0x7463656e,0x14(%r14)
  401c29:	74 
  401c2a:	41 c7 46 18 20 74 6f 	movl   $0x206f7420,0x18(%r14)
  401c31:	20 
  401c32:	41 c7 46 1c 74 68 65 	movl   $0x20656874,0x1c(%r14)
  401c39:	20 
  401c3a:	41 c7 46 20 41 75 74 	movl   $0x6f747541,0x20(%r14)
  401c41:	6f 
  401c42:	41 c7 46 24 6c 61 62 	movl   $0x2062616c,0x24(%r14)
  401c49:	20 
  401c4a:	41 c7 46 28 73 65 72 	movl   $0x76726573,0x28(%r14)
  401c51:	76 
  401c52:	66 41 c7 46 2c 65 72 	movw   $0x7265,0x2c(%r14)
  401c59:	41 c6 46 2e 00       	movb   $0x0,0x2e(%r14)
  401c5e:	44 89 ef             	mov    %r13d,%edi
  401c61:	e8 0a ee ff ff       	callq  400a70 <close@plt>
  401c66:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c6b:	e9 ee 06 00 00       	jmpq   40235e <submitr+0x90b>
  401c70:	48 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%rbx
  401c77:	4c 89 ff             	mov    %r15,%rdi
  401c7a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401c80:	fc                   	cld    
  401c81:	48 89 d9             	mov    %rbx,%rcx
  401c84:	44 89 c0             	mov    %r8d,%eax
  401c87:	f2 ae                	repnz scas %es:(%rdi),%al
  401c89:	48 89 ce             	mov    %rcx,%rsi
  401c8c:	48 f7 d6             	not    %rsi
  401c8f:	48 8b 7c 24 20       	mov    0x20(%rsp),%rdi
  401c94:	48 89 d9             	mov    %rbx,%rcx
  401c97:	f2 ae                	repnz scas %es:(%rdi),%al
  401c99:	48 89 ca             	mov    %rcx,%rdx
  401c9c:	48 f7 d2             	not    %rdx
  401c9f:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  401ca4:	48 89 d9             	mov    %rbx,%rcx
  401ca7:	f2 ae                	repnz scas %es:(%rdi),%al
  401ca9:	49 89 c9             	mov    %rcx,%r9
  401cac:	49 f7 d1             	not    %r9
  401caf:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401cb4:	48 89 d9             	mov    %rbx,%rcx
  401cb7:	f2 ae                	repnz scas %es:(%rdi),%al
  401cb9:	48 f7 d1             	not    %rcx
  401cbc:	49 8d 44 11 7e       	lea    0x7e(%r9,%rdx,1),%rax
  401cc1:	48 8d 4c 01 ff       	lea    -0x1(%rcx,%rax,1),%rcx
  401cc6:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401ccb:	48 01 c1             	add    %rax,%rcx
  401cce:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401cd5:	76 7e                	jbe    401d55 <submitr+0x302>
  401cd7:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401cde:	41 c7 46 04 72 3a 20 	movl   $0x52203a72,0x4(%r14)
  401ce5:	52 
  401ce6:	41 c7 46 08 65 73 75 	movl   $0x6c757365,0x8(%r14)
  401ced:	6c 
  401cee:	41 c7 46 0c 74 20 73 	movl   $0x74732074,0xc(%r14)
  401cf5:	74 
  401cf6:	41 c7 46 10 72 69 6e 	movl   $0x676e6972,0x10(%r14)
  401cfd:	67 
  401cfe:	41 c7 46 14 20 74 6f 	movl   $0x6f6f7420,0x14(%r14)
  401d05:	6f 
  401d06:	41 c7 46 18 20 6c 61 	movl   $0x72616c20,0x18(%r14)
  401d0d:	72 
  401d0e:	41 c7 46 1c 67 65 2e 	movl   $0x202e6567,0x1c(%r14)
  401d15:	20 
  401d16:	41 c7 46 20 49 6e 63 	movl   $0x72636e49,0x20(%r14)
  401d1d:	72 
  401d1e:	41 c7 46 24 65 61 73 	movl   $0x65736165,0x24(%r14)
  401d25:	65 
  401d26:	41 c7 46 28 20 53 55 	movl   $0x42555320,0x28(%r14)
  401d2d:	42 
  401d2e:	41 c7 46 2c 4d 49 54 	movl   $0x5254494d,0x2c(%r14)
  401d35:	52 
  401d36:	41 c7 46 30 5f 4d 41 	movl   $0x58414d5f,0x30(%r14)
  401d3d:	58 
  401d3e:	41 c7 46 34 42 55 46 	movl   $0x465542,0x34(%r14)
  401d45:	00 
  401d46:	44 89 ef             	mov    %r13d,%edi
  401d49:	e8 22 ed ff ff       	callq  400a70 <close@plt>
  401d4e:	89 d8                	mov    %ebx,%eax
  401d50:	e9 09 06 00 00       	jmpq   40235e <submitr+0x90b>
  401d55:	4c 8d a4 24 50 40 00 	lea    0x4050(%rsp),%r12
  401d5c:	00 
  401d5d:	ba 00 20 00 00       	mov    $0x2000,%edx
  401d62:	be 00 00 00 00       	mov    $0x0,%esi
  401d67:	4c 89 e7             	mov    %r12,%rdi
  401d6a:	e8 f1 ec ff ff       	callq  400a60 <memset@plt>
  401d6f:	4c 89 fd             	mov    %r15,%rbp
  401d72:	4c 89 ff             	mov    %r15,%rdi
  401d75:	fc                   	cld    
  401d76:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401d7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401d82:	f2 ae                	repnz scas %es:(%rdi),%al
  401d84:	48 f7 d1             	not    %rcx
  401d87:	8d 59 fe             	lea    -0x2(%rcx),%ebx
  401d8a:	83 fb ff             	cmp    $0xffffffffffffffff,%ebx
  401d8d:	0f 84 e6 04 00 00    	je     402279 <submitr+0x826>
  401d93:	4c 8d 7c 24 30       	lea    0x30(%rsp),%r15
  401d98:	0f b6 55 00          	movzbl 0x0(%rbp),%edx
  401d9c:	80 fa 2a             	cmp    $0x2a,%dl
  401d9f:	74 26                	je     401dc7 <submitr+0x374>
  401da1:	80 fa 2d             	cmp    $0x2d,%dl
  401da4:	74 21                	je     401dc7 <submitr+0x374>
  401da6:	80 fa 2e             	cmp    $0x2e,%dl
  401da9:	74 1c                	je     401dc7 <submitr+0x374>
  401dab:	80 fa 5f             	cmp    $0x5f,%dl
  401dae:	66 90                	xchg   %ax,%ax
  401db0:	74 15                	je     401dc7 <submitr+0x374>
  401db2:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401db5:	3c 09                	cmp    $0x9,%al
  401db7:	76 0e                	jbe    401dc7 <submitr+0x374>
  401db9:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401dbc:	3c 19                	cmp    $0x19,%al
  401dbe:	76 07                	jbe    401dc7 <submitr+0x374>
  401dc0:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401dc3:	3c 19                	cmp    $0x19,%al
  401dc5:	77 0a                	ja     401dd1 <submitr+0x37e>
  401dc7:	41 88 14 24          	mov    %dl,(%r12)
  401dcb:	49 83 c4 01          	add    $0x1,%r12
  401dcf:	eb 52                	jmp    401e23 <submitr+0x3d0>
  401dd1:	80 fa 20             	cmp    $0x20,%dl
  401dd4:	75 0b                	jne    401de1 <submitr+0x38e>
  401dd6:	41 c6 04 24 2b       	movb   $0x2b,(%r12)
  401ddb:	49 83 c4 01          	add    $0x1,%r12
  401ddf:	eb 42                	jmp    401e23 <submitr+0x3d0>
  401de1:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401de4:	3c 5f                	cmp    $0x5f,%al
  401de6:	76 05                	jbe    401ded <submitr+0x39a>
  401de8:	80 fa 09             	cmp    $0x9,%dl
  401deb:	75 4b                	jne    401e38 <submitr+0x3e5>
  401ded:	0f b6 d2             	movzbl %dl,%edx
  401df0:	be 10 2c 40 00       	mov    $0x402c10,%esi
  401df5:	4c 89 ff             	mov    %r15,%rdi
  401df8:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfd:	e8 1e ed ff ff       	callq  400b20 <sprintf@plt>
  401e02:	0f b6 44 24 30       	movzbl 0x30(%rsp),%eax
  401e07:	41 88 04 24          	mov    %al,(%r12)
  401e0b:	0f b6 44 24 31       	movzbl 0x31(%rsp),%eax
  401e10:	41 88 44 24 01       	mov    %al,0x1(%r12)
  401e15:	0f b6 44 24 32       	movzbl 0x32(%rsp),%eax
  401e1a:	41 88 44 24 02       	mov    %al,0x2(%r12)
  401e1f:	49 83 c4 03          	add    $0x3,%r12
  401e23:	83 eb 01             	sub    $0x1,%ebx
  401e26:	83 fb ff             	cmp    $0xffffffffffffffff,%ebx
  401e29:	0f 84 4a 04 00 00    	je     402279 <submitr+0x826>
  401e2f:	48 83 c5 01          	add    $0x1,%rbp
  401e33:	e9 60 ff ff ff       	jmpq   401d98 <submitr+0x345>
  401e38:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401e3f:	41 c7 46 04 72 3a 20 	movl   $0x52203a72,0x4(%r14)
  401e46:	52 
  401e47:	41 c7 46 08 65 73 75 	movl   $0x6c757365,0x8(%r14)
  401e4e:	6c 
  401e4f:	41 c7 46 0c 74 20 73 	movl   $0x74732074,0xc(%r14)
  401e56:	74 
  401e57:	41 c7 46 10 72 69 6e 	movl   $0x676e6972,0x10(%r14)
  401e5e:	67 
  401e5f:	41 c7 46 14 20 63 6f 	movl   $0x6e6f6320,0x14(%r14)
  401e66:	6e 
  401e67:	41 c7 46 18 74 61 69 	movl   $0x6e696174,0x18(%r14)
  401e6e:	6e 
  401e6f:	41 c7 46 1c 73 20 61 	movl   $0x6e612073,0x1c(%r14)
  401e76:	6e 
  401e77:	41 c7 46 20 20 69 6c 	movl   $0x6c6c6920,0x20(%r14)
  401e7e:	6c 
  401e7f:	41 c7 46 24 65 67 61 	movl   $0x6c616765,0x24(%r14)
  401e86:	6c 
  401e87:	41 c7 46 28 20 6f 72 	movl   $0x20726f20,0x28(%r14)
  401e8e:	20 
  401e8f:	41 c7 46 2c 75 6e 70 	movl   $0x72706e75,0x2c(%r14)
  401e96:	72 
  401e97:	41 c7 46 30 69 6e 74 	movl   $0x61746e69,0x30(%r14)
  401e9e:	61 
  401e9f:	41 c7 46 34 62 6c 65 	movl   $0x20656c62,0x34(%r14)
  401ea6:	20 
  401ea7:	41 c7 46 38 63 68 61 	movl   $0x72616863,0x38(%r14)
  401eae:	72 
  401eaf:	41 c7 46 3c 61 63 74 	movl   $0x65746361,0x3c(%r14)
  401eb6:	65 
  401eb7:	66 41 c7 46 40 72 2e 	movw   $0x2e72,0x40(%r14)
  401ebe:	41 c6 46 42 00       	movb   $0x0,0x42(%r14)
  401ec3:	44 89 ef             	mov    %r13d,%edi
  401ec6:	e8 a5 eb ff ff       	callq  400a70 <close@plt>
  401ecb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ed0:	e9 89 04 00 00       	jmpq   40235e <submitr+0x90b>
  401ed5:	48 01 c5             	add    %rax,%rbp
  401ed8:	48 89 da             	mov    %rbx,%rdx
  401edb:	48 89 ee             	mov    %rbp,%rsi
  401ede:	44 89 ef             	mov    %r13d,%edi
  401ee1:	e8 0a ed ff ff       	callq  400bf0 <write@plt>
  401ee6:	48 85 c0             	test   %rax,%rax
  401ee9:	7f 0f                	jg     401efa <submitr+0x4a7>
  401eeb:	e8 d0 ec ff ff       	callq  400bc0 <__errno_location@plt>
  401ef0:	83 38 04             	cmpl   $0x4,(%rax)
  401ef3:	75 0f                	jne    401f04 <submitr+0x4b1>
  401ef5:	b8 00 00 00 00       	mov    $0x0,%eax
  401efa:	48 29 c3             	sub    %rax,%rbx
  401efd:	75 d6                	jne    401ed5 <submitr+0x482>
  401eff:	4d 85 e4             	test   %r12,%r12
  401f02:	79 79                	jns    401f7d <submitr+0x52a>
  401f04:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401f0b:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401f12:	43 
  401f13:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401f1a:	6e 
  401f1b:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401f22:	6e 
  401f23:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401f2a:	65 
  401f2b:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401f32:	20 
  401f33:	41 c7 46 18 77 72 69 	movl   $0x74697277,0x18(%r14)
  401f3a:	74 
  401f3b:	41 c7 46 1c 65 20 74 	movl   $0x6f742065,0x1c(%r14)
  401f42:	6f 
  401f43:	41 c7 46 20 20 74 68 	movl   $0x65687420,0x20(%r14)
  401f4a:	65 
  401f4b:	41 c7 46 24 20 41 75 	movl   $0x74754120,0x24(%r14)
  401f52:	74 
  401f53:	41 c7 46 28 6f 6c 61 	movl   $0x62616c6f,0x28(%r14)
  401f5a:	62 
  401f5b:	41 c7 46 2c 20 73 65 	movl   $0x72657320,0x2c(%r14)
  401f62:	72 
  401f63:	41 c7 46 30 76 65 72 	movl   $0x726576,0x30(%r14)
  401f6a:	00 
  401f6b:	44 89 ef             	mov    %r13d,%edi
  401f6e:	e8 fd ea ff ff       	callq  400a70 <close@plt>
  401f73:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f78:	e9 e1 03 00 00       	jmpq   40235e <submitr+0x90b>
  401f7d:	44 89 ac 24 50 80 00 	mov    %r13d,0x8050(%rsp)
  401f84:	00 
  401f85:	c7 84 24 54 80 00 00 	movl   $0x0,0x8054(%rsp)
  401f8c:	00 00 00 00 
  401f90:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  401f97:	00 
  401f98:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401f9c:	48 89 84 24 58 80 00 	mov    %rax,0x8058(%rsp)
  401fa3:	00 
  401fa4:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
  401fab:	00 
  401fac:	ba 00 20 00 00       	mov    $0x2000,%edx
  401fb1:	e8 c3 f9 ff ff       	callq  401979 <rio_readlineb>
  401fb6:	48 85 c0             	test   %rax,%rax
  401fb9:	0f 8f 90 00 00 00    	jg     40204f <submitr+0x5fc>
  401fbf:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  401fc6:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  401fcd:	43 
  401fce:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  401fd5:	6e 
  401fd6:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  401fdd:	6e 
  401fde:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  401fe5:	65 
  401fe6:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  401fed:	20 
  401fee:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  401ff5:	64 
  401ff6:	41 c7 46 1c 20 66 69 	movl   $0x72696620,0x1c(%r14)
  401ffd:	72 
  401ffe:	41 c7 46 20 73 74 20 	movl   $0x68207473,0x20(%r14)
  402005:	68 
  402006:	41 c7 46 24 65 61 64 	movl   $0x65646165,0x24(%r14)
  40200d:	65 
  40200e:	41 c7 46 28 72 20 66 	movl   $0x72662072,0x28(%r14)
  402015:	72 
  402016:	41 c7 46 2c 6f 6d 20 	movl   $0x41206d6f,0x2c(%r14)
  40201d:	41 
  40201e:	41 c7 46 30 75 74 6f 	movl   $0x6c6f7475,0x30(%r14)
  402025:	6c 
  402026:	41 c7 46 34 61 62 20 	movl   $0x73206261,0x34(%r14)
  40202d:	73 
  40202e:	41 c7 46 38 65 72 76 	movl   $0x65767265,0x38(%r14)
  402035:	65 
  402036:	66 41 c7 46 3c 72 00 	movw   $0x72,0x3c(%r14)
  40203d:	44 89 ef             	mov    %r13d,%edi
  402040:	e8 2b ea ff ff       	callq  400a70 <close@plt>
  402045:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40204a:	e9 0f 03 00 00       	jmpq   40235e <submitr+0x90b>
  40204f:	48 8d 5c 24 40       	lea    0x40(%rsp),%rbx
  402054:	48 8d 8c 24 4c 20 00 	lea    0x204c(%rsp),%rcx
  40205b:	00 
  40205c:	48 8d 94 24 50 20 00 	lea    0x2050(%rsp),%rdx
  402063:	00 
  402064:	48 8d bc 24 50 60 00 	lea    0x6050(%rsp),%rdi
  40206b:	00 
  40206c:	49 89 d8             	mov    %rbx,%r8
  40206f:	be 17 2c 40 00       	mov    $0x402c17,%esi
  402074:	b8 00 00 00 00       	mov    $0x0,%eax
  402079:	e8 c2 ea ff ff       	callq  400b40 <sscanf@plt>
  40207e:	8b 94 24 4c 20 00 00 	mov    0x204c(%rsp),%edx
  402085:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  40208b:	74 4a                	je     4020d7 <submitr+0x684>
  40208d:	48 89 d9             	mov    %rbx,%rcx
  402090:	be 58 2b 40 00       	mov    $0x402b58,%esi
  402095:	4c 89 f7             	mov    %r14,%rdi
  402098:	b8 00 00 00 00       	mov    $0x0,%eax
  40209d:	e8 7e ea ff ff       	callq  400b20 <sprintf@plt>
  4020a2:	44 89 ef             	mov    %r13d,%edi
  4020a5:	e8 c6 e9 ff ff       	callq  400a70 <close@plt>
  4020aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020af:	e9 aa 02 00 00       	jmpq   40235e <submitr+0x90b>
  4020b4:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
  4020bb:	00 
  4020bc:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  4020c3:	00 
  4020c4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020c9:	e8 ab f8 ff ff       	callq  401979 <rio_readlineb>
  4020ce:	48 85 c0             	test   %rax,%rax
  4020d1:	0f 8e 06 02 00 00    	jle    4022dd <submitr+0x88a>
  4020d7:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
  4020de:	00 
  4020df:	0f b6 94 24 50 60 00 	movzbl 0x6050(%rsp),%edx
  4020e6:	00 
  4020e7:	0f b6 05 40 0b 00 00 	movzbl 0xb40(%rip),%eax        # 402c2e <array.3306+0x50e>
  4020ee:	39 c2                	cmp    %eax,%edx
  4020f0:	75 c2                	jne    4020b4 <submitr+0x661>
  4020f2:	0f b6 94 24 51 60 00 	movzbl 0x6051(%rsp),%edx
  4020f9:	00 
  4020fa:	0f b6 05 2e 0b 00 00 	movzbl 0xb2e(%rip),%eax        # 402c2f <array.3306+0x50f>
  402101:	39 c2                	cmp    %eax,%edx
  402103:	75 af                	jne    4020b4 <submitr+0x661>
  402105:	0f b6 94 24 52 60 00 	movzbl 0x6052(%rsp),%edx
  40210c:	00 
  40210d:	0f b6 05 1c 0b 00 00 	movzbl 0xb1c(%rip),%eax        # 402c30 <array.3306+0x510>
  402114:	39 c2                	cmp    %eax,%edx
  402116:	75 9c                	jne    4020b4 <submitr+0x661>
  402118:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
  40211f:	00 
  402120:	ba 00 20 00 00       	mov    $0x2000,%edx
  402125:	e8 4f f8 ff ff       	callq  401979 <rio_readlineb>
  40212a:	48 85 c0             	test   %rax,%rax
  40212d:	0f 8f 91 00 00 00    	jg     4021c4 <submitr+0x771>
  402133:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  40213a:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  402141:	43 
  402142:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  402149:	6e 
  40214a:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  402151:	6e 
  402152:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  402159:	65 
  40215a:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  402161:	20 
  402162:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  402169:	64 
  40216a:	41 c7 46 1c 20 73 74 	movl   $0x61747320,0x1c(%r14)
  402171:	61 
  402172:	41 c7 46 20 74 75 73 	movl   $0x20737574,0x20(%r14)
  402179:	20 
  40217a:	41 c7 46 24 6d 65 73 	movl   $0x7373656d,0x24(%r14)
  402181:	73 
  402182:	41 c7 46 28 61 67 65 	movl   $0x20656761,0x28(%r14)
  402189:	20 
  40218a:	41 c7 46 2c 66 72 6f 	movl   $0x6d6f7266,0x2c(%r14)
  402191:	6d 
  402192:	41 c7 46 30 20 41 75 	movl   $0x74754120,0x30(%r14)
  402199:	74 
  40219a:	41 c7 46 34 6f 6c 61 	movl   $0x62616c6f,0x34(%r14)
  4021a1:	62 
  4021a2:	41 c7 46 38 20 73 65 	movl   $0x72657320,0x38(%r14)
  4021a9:	72 
  4021aa:	41 c7 46 3c 76 65 72 	movl   $0x726576,0x3c(%r14)
  4021b1:	00 
  4021b2:	44 89 ef             	mov    %r13d,%edi
  4021b5:	e8 b6 e8 ff ff       	callq  400a70 <close@plt>
  4021ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021bf:	e9 9a 01 00 00       	jmpq   40235e <submitr+0x90b>
  4021c4:	48 8d b4 24 50 60 00 	lea    0x6050(%rsp),%rsi
  4021cb:	00 
  4021cc:	4c 89 f7             	mov    %r14,%rdi
  4021cf:	e8 fc e9 ff ff       	callq  400bd0 <strcpy@plt>
  4021d4:	44 89 ef             	mov    %r13d,%edi
  4021d7:	e8 94 e8 ff ff       	callq  400a70 <close@plt>
  4021dc:	4d 89 f0             	mov    %r14,%r8
  4021df:	45 0f b6 0e          	movzbl (%r14),%r9d
  4021e3:	0f b6 05 3e 0a 00 00 	movzbl 0xa3e(%rip),%eax        # 402c28 <array.3306+0x508>
  4021ea:	41 39 c1             	cmp    %eax,%r9d
  4021ed:	75 30                	jne    40221f <submitr+0x7cc>
  4021ef:	41 0f b6 56 01       	movzbl 0x1(%r14),%edx
  4021f4:	0f b6 05 2e 0a 00 00 	movzbl 0xa2e(%rip),%eax        # 402c29 <array.3306+0x509>
  4021fb:	39 c2                	cmp    %eax,%edx
  4021fd:	75 20                	jne    40221f <submitr+0x7cc>
  4021ff:	41 0f b6 56 02       	movzbl 0x2(%r14),%edx
  402204:	0f b6 05 1f 0a 00 00 	movzbl 0xa1f(%rip),%eax        # 402c2a <array.3306+0x50a>
  40220b:	39 c2                	cmp    %eax,%edx
  40220d:	75 10                	jne    40221f <submitr+0x7cc>
  40220f:	41 0f b6 56 03       	movzbl 0x3(%r14),%edx
  402214:	0f b6 05 10 0a 00 00 	movzbl 0xa10(%rip),%eax        # 402c2b <array.3306+0x50b>
  40221b:	39 c2                	cmp    %eax,%edx
  40221d:	74 46                	je     402265 <submitr+0x812>
  40221f:	4c 89 f6             	mov    %r14,%rsi
  402222:	bf 2c 2c 40 00       	mov    $0x402c2c,%edi
  402227:	b9 05 00 00 00       	mov    $0x5,%ecx
  40222c:	fc                   	cld    
  40222d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40222f:	0f 97 c2             	seta   %dl
  402232:	0f 92 c0             	setb   %al
  402235:	38 c2                	cmp    %al,%dl
  402237:	74 2c                	je     402265 <submitr+0x812>
  402239:	0f b6 05 f1 09 00 00 	movzbl 0x9f1(%rip),%eax        # 402c31 <array.3306+0x511>
  402240:	41 39 c1             	cmp    %eax,%r9d
  402243:	75 2a                	jne    40226f <submitr+0x81c>
  402245:	41 0f b6 50 01       	movzbl 0x1(%r8),%edx
  40224a:	0f b6 05 e1 09 00 00 	movzbl 0x9e1(%rip),%eax        # 402c32 <array.3306+0x512>
  402251:	39 c2                	cmp    %eax,%edx
  402253:	75 1a                	jne    40226f <submitr+0x81c>
  402255:	41 0f b6 50 02       	movzbl 0x2(%r8),%edx
  40225a:	0f b6 05 d2 09 00 00 	movzbl 0x9d2(%rip),%eax        # 402c33 <array.3306+0x513>
  402261:	39 c2                	cmp    %eax,%edx
  402263:	75 0a                	jne    40226f <submitr+0x81c>
  402265:	b8 00 00 00 00       	mov    $0x0,%eax
  40226a:	e9 ef 00 00 00       	jmpq   40235e <submitr+0x90b>
  40226f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402274:	e9 e5 00 00 00       	jmpq   40235e <submitr+0x90b>
  402279:	48 8d ac 24 50 60 00 	lea    0x6050(%rsp),%rbp
  402280:	00 
  402281:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  402286:	48 89 04 24          	mov    %rax,(%rsp)
  40228a:	4c 8d 8c 24 50 40 00 	lea    0x4050(%rsp),%r9
  402291:	00 
  402292:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
  402297:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  40229c:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
  4022a1:	be 88 2b 40 00       	mov    $0x402b88,%esi
  4022a6:	48 89 ef             	mov    %rbp,%rdi
  4022a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4022ae:	e8 6d e8 ff ff       	callq  400b20 <sprintf@plt>
  4022b3:	48 89 ef             	mov    %rbp,%rdi
  4022b6:	fc                   	cld    
  4022b7:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022be:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c3:	f2 ae                	repnz scas %es:(%rdi),%al
  4022c5:	48 f7 d1             	not    %rcx
  4022c8:	49 89 cc             	mov    %rcx,%r12
  4022cb:	49 83 ec 01          	sub    $0x1,%r12
  4022cf:	0f 84 a8 fc ff ff    	je     401f7d <submitr+0x52a>
  4022d5:	4c 89 e3             	mov    %r12,%rbx
  4022d8:	e9 fb fb ff ff       	jmpq   401ed8 <submitr+0x485>
  4022dd:	41 c7 06 45 72 72 6f 	movl   $0x6f727245,(%r14)
  4022e4:	41 c7 46 04 72 3a 20 	movl   $0x43203a72,0x4(%r14)
  4022eb:	43 
  4022ec:	41 c7 46 08 6c 69 65 	movl   $0x6e65696c,0x8(%r14)
  4022f3:	6e 
  4022f4:	41 c7 46 0c 74 20 75 	movl   $0x6e752074,0xc(%r14)
  4022fb:	6e 
  4022fc:	41 c7 46 10 61 62 6c 	movl   $0x656c6261,0x10(%r14)
  402303:	65 
  402304:	41 c7 46 14 20 74 6f 	movl   $0x206f7420,0x14(%r14)
  40230b:	20 
  40230c:	41 c7 46 18 72 65 61 	movl   $0x64616572,0x18(%r14)
  402313:	64 
  402314:	41 c7 46 1c 20 68 65 	movl   $0x61656820,0x1c(%r14)
  40231b:	61 
  40231c:	41 c7 46 20 64 65 72 	movl   $0x73726564,0x20(%r14)
  402323:	73 
  402324:	41 c7 46 24 20 66 72 	movl   $0x6f726620,0x24(%r14)
  40232b:	6f 
  40232c:	41 c7 46 28 6d 20 41 	movl   $0x7541206d,0x28(%r14)
  402333:	75 
  402334:	41 c7 46 2c 74 6f 6c 	movl   $0x616c6f74,0x2c(%r14)
  40233b:	61 
  40233c:	41 c7 46 30 62 20 73 	movl   $0x65732062,0x30(%r14)
  402343:	65 
  402344:	41 c7 46 34 72 76 65 	movl   $0x72657672,0x34(%r14)
  40234b:	72 
  40234c:	41 c6 46 38 00       	movb   $0x0,0x38(%r14)
  402351:	44 89 ef             	mov    %r13d,%edi
  402354:	e8 17 e7 ff ff       	callq  400a70 <close@plt>
  402359:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40235e:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
  402365:	5b                   	pop    %rbx
  402366:	5d                   	pop    %rbp
  402367:	41 5c                	pop    %r12
  402369:	41 5d                	pop    %r13
  40236b:	41 5e                	pop    %r14
  40236d:	41 5f                	pop    %r15
  40236f:	c3                   	retq   

0000000000402370 <driver_post>:
  402370:	53                   	push   %rbx
  402371:	48 83 ec 10          	sub    $0x10,%rsp
  402375:	48 89 cb             	mov    %rcx,%rbx
  402378:	85 d2                	test   %edx,%edx
  40237a:	74 1f                	je     40239b <driver_post+0x2b>
  40237c:	bf 34 2c 40 00       	mov    $0x402c34,%edi
  402381:	b8 00 00 00 00       	mov    $0x0,%eax
  402386:	e8 c5 e6 ff ff       	callq  400a50 <printf@plt>
  40238b:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402390:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402394:	b8 00 00 00 00       	mov    $0x0,%eax
  402399:	eb 47                	jmp    4023e2 <driver_post+0x72>
  40239b:	48 85 ff             	test   %rdi,%rdi
  40239e:	74 34                	je     4023d4 <driver_post+0x64>
  4023a0:	0f b6 17             	movzbl (%rdi),%edx
  4023a3:	0f b6 05 86 08 00 00 	movzbl 0x886(%rip),%eax        # 402c30 <array.3306+0x510>
  4023aa:	39 c2                	cmp    %eax,%edx
  4023ac:	74 26                	je     4023d4 <driver_post+0x64>
  4023ae:	48 89 0c 24          	mov    %rcx,(%rsp)
  4023b2:	49 89 f1             	mov    %rsi,%r9
  4023b5:	41 b8 4b 2c 40 00    	mov    $0x402c4b,%r8d
  4023bb:	48 89 f9             	mov    %rdi,%rcx
  4023be:	ba 53 2c 40 00       	mov    $0x402c53,%edx
  4023c3:	be 50 00 00 00       	mov    $0x50,%esi
  4023c8:	bf 38 2b 40 00       	mov    $0x402b38,%edi
  4023cd:	e8 81 f6 ff ff       	callq  401a53 <submitr>
  4023d2:	eb 0e                	jmp    4023e2 <driver_post+0x72>
  4023d4:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4023d9:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4023dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e2:	48 83 c4 10          	add    $0x10,%rsp
  4023e6:	5b                   	pop    %rbx
  4023e7:	c3                   	retq   

00000000004023e8 <sigalrm_handler>:
  4023e8:	48 83 ec 08          	sub    $0x8,%rsp
  4023ec:	ba 00 00 00 00       	mov    $0x0,%edx
  4023f1:	be e8 2b 40 00       	mov    $0x402be8,%esi
  4023f6:	48 8b 3d 0b 19 20 00 	mov    0x20190b(%rip),%rdi        # 603d08 <stderr@@GLIBC_2.2.5>
  4023fd:	b8 00 00 00 00       	mov    $0x0,%eax
  402402:	e8 d9 e7 ff ff       	callq  400be0 <fprintf@plt>
  402407:	bf 01 00 00 00       	mov    $0x1,%edi
  40240c:	e8 8f e6 ff ff       	callq  400aa0 <exit@plt>
  402411:	90                   	nop
  402412:	90                   	nop
  402413:	90                   	nop
  402414:	90                   	nop
  402415:	90                   	nop
  402416:	90                   	nop
  402417:	90                   	nop
  402418:	90                   	nop
  402419:	90                   	nop
  40241a:	90                   	nop
  40241b:	90                   	nop
  40241c:	90                   	nop
  40241d:	90                   	nop
  40241e:	90                   	nop
  40241f:	90                   	nop

0000000000402420 <__libc_csu_fini>:
  402420:	f3 c3                	repz retq 
  402422:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402430 <__libc_csu_init>:
  402430:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  402435:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40243a:	4c 8d 25 fb 0c 20 00 	lea    0x200cfb(%rip),%r12        # 60313c <__fini_array_end>
  402441:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  402446:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  40244b:	49 89 f6             	mov    %rsi,%r14
  40244e:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  402453:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  402458:	48 83 ec 38          	sub    $0x38,%rsp
  40245c:	41 89 ff             	mov    %edi,%r15d
  40245f:	49 89 d5             	mov    %rdx,%r13
  402462:	e8 c1 e5 ff ff       	callq  400a28 <_init>
  402467:	48 8d 05 ce 0c 20 00 	lea    0x200cce(%rip),%rax        # 60313c <__fini_array_end>
  40246e:	49 29 c4             	sub    %rax,%r12
  402471:	49 c1 fc 03          	sar    $0x3,%r12
  402475:	4d 85 e4             	test   %r12,%r12
  402478:	74 1e                	je     402498 <__libc_csu_init+0x68>
  40247a:	31 ed                	xor    %ebp,%ebp
  40247c:	48 89 c3             	mov    %rax,%rbx
  40247f:	90                   	nop
  402480:	48 83 c5 01          	add    $0x1,%rbp
  402484:	4c 89 ea             	mov    %r13,%rdx
  402487:	4c 89 f6             	mov    %r14,%rsi
  40248a:	44 89 ff             	mov    %r15d,%edi
  40248d:	ff 13                	callq  *(%rbx)
  40248f:	48 83 c3 08          	add    $0x8,%rbx
  402493:	49 39 ec             	cmp    %rbp,%r12
  402496:	75 e8                	jne    402480 <__libc_csu_init+0x50>
  402498:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40249d:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4024a2:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4024a7:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4024ac:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4024b1:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  4024b6:	48 83 c4 38          	add    $0x38,%rsp
  4024ba:	c3                   	retq   
  4024bb:	90                   	nop
  4024bc:	90                   	nop
  4024bd:	90                   	nop
  4024be:	90                   	nop
  4024bf:	90                   	nop

00000000004024c0 <__do_global_ctors_aux>:
  4024c0:	55                   	push   %rbp
  4024c1:	48 89 e5             	mov    %rsp,%rbp
  4024c4:	53                   	push   %rbx
  4024c5:	bb 40 31 60 00       	mov    $0x603140,%ebx
  4024ca:	48 83 ec 08          	sub    $0x8,%rsp
  4024ce:	48 8b 05 6b 0c 20 00 	mov    0x200c6b(%rip),%rax        # 603140 <__CTOR_LIST__>
  4024d5:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4024d9:	74 14                	je     4024ef <__do_global_ctors_aux+0x2f>
  4024db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4024e0:	48 83 eb 08          	sub    $0x8,%rbx
  4024e4:	ff d0                	callq  *%rax
  4024e6:	48 8b 03             	mov    (%rbx),%rax
  4024e9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4024ed:	75 f1                	jne    4024e0 <__do_global_ctors_aux+0x20>
  4024ef:	48 83 c4 08          	add    $0x8,%rsp
  4024f3:	5b                   	pop    %rbx
  4024f4:	c9                   	leaveq 
  4024f5:	c3                   	retq   
  4024f6:	90                   	nop
  4024f7:	90                   	nop

Disassembly of section .fini:

00000000004024f8 <_fini>:
  4024f8:	48 83 ec 08          	sub    $0x8,%rsp
  4024fc:	e8 5f e7 ff ff       	callq  400c60 <__do_global_dtors_aux>
  402501:	48 83 c4 08          	add    $0x8,%rsp
  402505:	c3                   	retq   
