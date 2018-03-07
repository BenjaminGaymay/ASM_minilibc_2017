BITS 64

global memmove
section .text

memmove: xor rcx, rcx
	 xor r9, r9

first:	mov r8b, byte[rsi]
	cmp rcx, rdx
	jz initSe
	mov byte[r9 + rcx], r8b
	inc rcx
	inc rsi
	jmp first

initSe:	xor rcx, rcx

second:	mov r8b, byte[r9]
	cmp rcx, rdx
	jz quit
	mov byte[rsi + rcx], r8b
	inc rcx
	inc r9
	jmp second

quit:	mov rax, rdi
	ret
