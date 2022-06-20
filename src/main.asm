		global 		_start


		section 	.text
_start:		MOV 		rsi, hello
		MOV 		rdx, 9
		MOV 		rax, 1
		MOV 		rdi, 1
		SYSCALL
		MOV 		rax, 60
		MOV 		rdi, 0
		SYSCALL


		section 	.data
hello: 		db 	 	"GAZTREAT", 10, 0
