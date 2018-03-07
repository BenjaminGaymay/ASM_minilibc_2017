BITS 64

global memset
section .text

memset: xor rcx, rcx

while:	cmp rcx, rdx
	jz quit
	mov byte[rdi + rcx], sil
	inc rcx
	jmp while

quit:	mov rax, rdi
	ret
