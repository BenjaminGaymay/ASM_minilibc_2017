BITS 64

	global rindex:
	section .text

rindex:
	mov rcx, rdi

len:	cmp byte[rdi], 0
	jz while
	inc rdi
	jmp len

while:	dec rdi
	cmp byte[rdi], sil
	jz found
	cmp rdi, rcx
	jz nFound
	jmp while

found:	mov rax, rdi
	ret

nFound:	mov rax, 0
	ret
