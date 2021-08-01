# intAdder.asm
	.data 
message1: .asciiz "Enter 1st number: "
message2: .asciiz "Enter 2nd number: "
message3: .asciiz "Sum is "

	.text 

	#Give user message to enter number
main:	li $v0, 4
	la $a0, message1
	syscall

	#read user input 
	li $v0, 5
	syscall

	#store input taken from user into any register
	move $t0, $v0

	#give user message to enter another number 
	li $v0, 4
	la $a0, message2
	syscall

	#read user input
	li $v0, 5
	syscall 

	#store input taken from into any register
	move $t1, $v0

	#add both reg in which input was stored 
	add $t2, $t0, $t1

	#display the message of answer 
	li $v0, 4
	la $a0, message3
	syscall 

	#display the answer
	li $v0, 1
	move $a0, $t2
	syscall



