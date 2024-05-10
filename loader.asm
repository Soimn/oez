bits 16
org 0x7c00

	mov ah, 0x0E
	mov bp, message
	xor si, si

	print_loop:
		mov al, [bp + si]
		int 0x10

		inc si

		print_loop_header:
		cmp si, message_len
		jb print_loop

	jmp $

	message: db "Hello World"
	message_len equ $ - message

	times 510-($-$$) db 0
	dw 0xAA55
