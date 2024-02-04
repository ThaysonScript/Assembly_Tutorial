.data
	msg: .asciiz "digite numero decimal: "
	zero: .float 0.0
	
.text
	# imprimir msg para user
	li $v0, 4
	la $a0, msg
	syscall
	
	# ler num
	li $v0, 6
	syscall
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	# imprimir num
	li $v0, 2
	syscall