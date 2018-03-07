BITS 64

global memcpy
section .text

memcpy: xor rcx, rcx

while:	mov r8b, byte[rsi]
	cmp rcx, rdx
	jz quit
	mov byte[rdi + rcx], r8b
	inc rcx
	inc rsi
	jmp while

quit:	mov rax, rdi
	ret
