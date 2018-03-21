BITS 64

global strcasecmp:
section .text

strcasecmp:
	xor rax, rax
	xor rbx, rbx
	xor rcx, rcx

while:	mov al, byte[rdi + rcx]
	mov bl, byte[rsi + rcx]

alUpp:
	cmp al, 65
	jb blUpp
	cmp al, 90
	ja blUpp
	add al, 32

blUpp:
	cmp bl, 65
	jb comp
	cmp bl, 90
	ja comp
	add bl, 32

comp:	cmp al, 0
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
