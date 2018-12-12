.data
number: .asciiz "Enter the number of disks "
moves: .asiiz "Moves = "
.text
la $a0,number
li $v0,4
syscall
li $v0,5
syscall
li $t0,1
li $t1,1
li $t2,2
Move:
mult $t1,$t2
mflo $t1
addi $t1,$t1,1
addi $t0,$t0,1
bne $t0,$v0, Move
la $a0,moves
li $v0,4
syscall
move $a0,$t1
li $v0,1
syscall
li $v0,10
syscall


