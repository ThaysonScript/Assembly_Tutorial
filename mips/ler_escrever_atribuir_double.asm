.data
	msg: .asciiz "digite numero decimal: "
	zero: .double 0.0
	
.text
	# imprimir msg para user
	li $v0, 4
	la $a0, msg
	syscall
	
	# ler num
	li $v0, 7
	syscall
	
	ldc1 $f2, zero
	add.d $f12, $f2, $f0
	
	# imprimir num
	li $v0, 3
	syscall