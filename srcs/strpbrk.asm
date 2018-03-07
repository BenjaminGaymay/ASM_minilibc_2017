BITS 64

global strpbrk:
section .text

strpbrk:
	xor rax, rax
	xor rcx, rcx

while:	mov r8b, byte[rdi]
	cmp r8b, 0
	jz null

reject:	mov r9b, byte[rsi + rcx]
	cmp r9b, 0
	jz doLoop
	cmp r8b, r9b
	jz quit
	inc rcx
	jmp reject

doLoop:	xor rcx, rcx
	inc rdi
	jmp while

quit:	mov rax, rdi
	ret

null:	xor rax, rax
	ret
