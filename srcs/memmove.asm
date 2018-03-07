BITS 64

global memmove
section .text

memmove: xor rcx, rcx

first:	mov r8b, byte[rsi + rcx]
	mov byte[rbp + rcx], r8b
	cmp rcx, rdx
	jz initS
	inc rcx
	jmp first

initS:	xor rcx, rcx

second:	mov r8b, byte[rbp + rcx]
	mov byte[rdi + rcx], r8b
	cmp rcx, rdx
	jz quit
	inc rcx
	jmp second

quit:	mov rax, rdi
	ret
