.data
	inteiro: .word 56
	
.text
	li $v0, 1		# imprimir inteiro
	lw $a0, inteiro		# carregar palavra
	syscall 