BITS 64

	global strncmp:
	section .text

strncmp:
	xor rax, rax
	xor rbx, rbx
	xor rcx, rcx

while:	mov al, byte[rdi + rcx]
	mov bl, byte[rsi + rcx]
	cmp rdx, rcx
	je diff
	cmp al, 0
	jz diff
	cmp bl, 0
	jz diff
	cmp al, bl
	jne diff
	inc rcx
	jmp while

diff:	sub al, bl
	movsx rax, al
	ret
