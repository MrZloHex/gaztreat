		global 		_start

		extern 		print

		section 	.text
_start:		MOV 		rax, hello
		CALL 		print
		MOV 		rax, 60
		MOV 		rdi, 0
		SYSCALL


		section 	.data
hello: 		db 	 	"GAZTREAT", 10, 0
