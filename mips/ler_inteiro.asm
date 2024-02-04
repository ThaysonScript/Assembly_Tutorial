.data
	msg: .asciiz "digite sua idade: "
	idade: .asciiz "sua idade e: "
	
.text
	li $v0, 4
	la $a0, msg
	syscall 
	
	li $v0, 5
	syscall 
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, idade
	syscall 
	
	li $v0, 1
	
	move $a0, $t0
	
	syscall 