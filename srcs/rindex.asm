BITS 64

global rindex:
section .text

rindex:
	mov rcx, rdi

len:	cmp byte[rdi], 0
	jz while
	inc rdi
	jmp len

while:	cmp byte[rdi], sil
	jz found
	cmp rdi, rcx
	jz nFound
	dec rdi
	jmp while

found:	mov rax, rdi
	ret

nFound:	xor rax, rax
	ret
