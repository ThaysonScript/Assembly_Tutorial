# loops precisam de dois rotulos
# 1:
#	para manter no loop
# 2:
#	para sair do loop

.text
	move $t0, $zero		# iniciar um iterador
	
	while:
		beq $t0, 10, saida	# caso t0 seja igual a 10 execute saida
		
		# imprimir valor de i
		li $v0, 1
		move $a0, $t0
		syscall
		
		addi $t0, $t0, 1	# incremente 1 em t0 e atribua em t0
		j while			# execute novamente o loop
		
	# caso a condicional seja executada o loop é terminado
	saida:
		# imprimir valor de i
		li $v0, 1
		move $a0, $t0
		syscall