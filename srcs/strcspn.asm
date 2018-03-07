BITS 64

global strcspn:
section .text

strcspn:
	xor rax, rax
	xor rcx, rcx

while:	mov r8b, byte[rdi + rax]
	cmp r8b, 0
	jz quit

reject:	mov r9b, byte[rsi + rcx]
	cmp r9b, 0
	jz doLoop
	cmp r8b, r9b
	jz quit
	inc rcx
	jmp reject

doLoop:	xor rcx, rcx
	inc rax
	jmp while

quit:	ret
