.data
	pergunta: .asciiz "Qual o seu nome: "
	msg: .asciiz "ola "
	nome: .space 25
	
.text
	# imprimir a pergunta
	li $v0, 4
	la $a0, pergunta
	syscall
	
	# ler nome
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	# mostrar msg
	li $v0, 4
	la $a0, msg
	syscall
	
	# imprimir nome
	li $v0, 4
	la $a0, nome
	syscall