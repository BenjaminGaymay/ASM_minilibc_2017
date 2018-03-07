BITS 64

	global strchr:
	section .text

strchr: cmp byte[rdi], sil
	jz found
	cmp byte[rdi], 0
	jz nFound
	inc rdi
	jmp strchr

found:	mov rax, rdi
	ret

nFound:	mov rax, 0
	ret
