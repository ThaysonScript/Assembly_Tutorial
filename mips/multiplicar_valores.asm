.text
	addi $s0, $zero, 10
	addi $s1, $zero, 2
	mul $s3, $s0, $s1
	li $v0, 1
	move $a0, $s3		# mover registrador para outro registrador
	syscall			# executar impressao