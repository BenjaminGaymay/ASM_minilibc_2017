BITS 64

	global strlen:
	section .text

strlen:
	xor rax, rax

while:	cmp BYTE [rdi + rax], 0
	jz quit
	inc rax
	jmp while

quit:	ret
