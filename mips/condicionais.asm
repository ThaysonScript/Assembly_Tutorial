# escreva um programa mips que ler nummero inteiro e imprime se ele e par ou impar
.data
	msg: .asciiz "digite numero: "
	par: .asciiz "numero e par"
	impar: .asciiz "numero e impar"
	
.text
	# imprimir msg ao user
	li $v0, 4
	la $a0, msg
	syscall 	# imprima
	
	# ler num
	li $v0, 5	# ler um num inteiro
	syscall		# imprima
	
	li $t0, 2	# atribuir 2 ao registrador t0
	div $v0, $t0	# divida a leitura do num por registrador t0
	
	mfhi $t1	# pegar resto de divisao
	
	# se t1 for igual a $zero, execute imprimirPar
	beq $t1, $zero, imprimirPar
	
		# else
		li $v0, 4
		la $a0, impar
		syscall 
		
		# encerre programa
		li $v0, 10
		syscall
	imprimirPar:
		li $v0, 4
		la $a0, par
		syscall