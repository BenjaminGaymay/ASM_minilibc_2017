BITS 64

global strstr:
section .text

strstr: cmp byte[rsi], 0
	jz found
	jmp init

nFoundC:
	inc rdi

init:	xor rdx, rdx
	xor rcx, rcx

while:	mov r8b, byte[rsi]
	cmp byte[rdi], r8b
	jz foundC
	cmp byte[rdi], 0
	jz nFound
	inc rdi
	jmp while

foundC:	mov r8b, byte[rsi + rcx]
	cmp r8b, 0
	jz found
	cmp byte[rdi + rdx], r8b
	jnz nFoundC
	cmp byte[rdi + rdx], 0
	jz nFound
	inc rcx
	inc rdx
	jmp foundC

found:	mov rax, rdi
	ret

nFound:	mov rax, 0
	ret
