# exercicio de loop
# escrever programa que ler inteiro positivo e imprime todos os inteiros de zero ate o lido

.data
	space: .byte ' '
	
.text
	li $v0, 5
	syscall
	
	move $t0, $v0	# valor lido
	
	move $t1, $zero		# contador = 0
	
	while:
		bgt $t1, $t0, sairLoop
		
		# imprimir contador
		li $v0, 1
		move $a0, $t1
		syscall
		
		#imprimir space
		li $v0, 4
		la $a0, space
		syscall
		
		addi $t1, $t1, 1	# incremente contador
		
		j while			# executar loop novamente
		
	sairLoop:
		