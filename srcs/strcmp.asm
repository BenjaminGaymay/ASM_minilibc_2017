BITS 64
	global strcmp:
	section .text

strcmp:
	xor rax, rax
	xor rdx, rdx
	xor rcx, rcx

while:	mov al, byte[rdi + rcx]
	mov bl, byte[rsi + rcx]
	cmp al, 0
	jz diff
	cmp bl, 0
	jz diff
	cmp al, bl
	jne diff
	inc rax
	jmp while

diff:	sub al, bl
	movsx rax, al
	ret
