.data
	# area de dados da memoria principal
	msg: .asciiz "hello world!"
    
.text
	# area para instrucoes do programa
	li $v0, 4
	la, $a0, msg
	syscall	 # chame, execute tudo que foi escrito