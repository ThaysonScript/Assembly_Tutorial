.data
	maior: .asciiz "maior que zero"
	menor: .asciiz "menor que zero"
	igual: .asciiz "igaul a zero"
	
.text
	# ler inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimirIgualZero
	bgt $t0, $zero, imprimirMaiorZero
	blt $t0, $zero, imprimirMenorZero
	
	imprimirIgualZero:
		# caso igual a zero
		#imprima igual a zero
		li $v0, 4
		la $a0, igual
		syscall
		
		# encerrar programa
		li $v0, 10
		syscall
		
	imprimirMaiorZero:
		# caso maior que zero
		#imprima maior que zero
		li $v0, 4
		la $a0, maior
		syscall
		
		# encerrar programa
		li $v0, 10
		syscall
		
	imprimirMenorZero:
		# caso menor que zero
		#imprima menor que zero
		li $v0, 4
		la $a0, menor
		syscall