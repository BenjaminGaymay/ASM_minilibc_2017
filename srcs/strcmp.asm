BITS 64

	global strcmp:
	section .text

strcmp:
	xor rax, rax
	xor rbx, rbx
	xor r8, r8

while:	mov al, byte[rdi + r8]
	mov bl, byte[rsi + r8]
	cmp al, 0
	jz alEnd
	cmp bl, 0
	jz sup
	cmp al, bl
	jne nEqual
	inc r8
	jmp while

alEnd:	cmp bl, 0
	jz equal
	jmp inf

nEqual:	cmp al, bl
	jb inf
	jnb sup

equal:	mov rax, 0
	ret

inf:	mov rax, -1
	ret

sup:	mov rax, 1
	ret
