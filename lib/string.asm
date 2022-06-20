		global 		length
		global 		is_alpha

		section 	.text

length:		push 		rbx
		mov		rbx, rax
_len_loop:	cmp	  	BYTE 	[rax], 0
		je		_len_exit
		inc		rax
		jmp		_len_loop
_len_exit:	sub		rax, rbx
		pop 		rbx
		ret

is_alpha: 	push 		rbx
		mov 		rbx, 65
_alp_loop_low:  cmp 		rax, rbx
		je  		_alpha_ex_true
		inc 		rbx
		cmp 		rbx, 91
		jne 		_alp_loop_low
		mov 		rbx, 97
_alp_loop_up:	cmp 		rax, rbx
		je 		_alpha_ex_true
		inc 		rbx
		cmp 		rbx, 123
		jne 		_alp_loop_up
		pop 		rbx
		mov 		rax, 0
		ret
_alpha_ex_true:	pop 		rbx
		mov 		rax, 1
		ret

