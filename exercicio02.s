.data 
      escreva00:.asciiz "Digite a quantidade de camisetas pequenas vendidas: \n" #\n pula linha
      escreva01:.asciiz "Digite a quantidade de camisetas media vendidas : \n"
      escreva02:.asciiz "Digite a quantidade de camisetas grandes vendidas: \n"
      escreva03:.asciiz "Valor de vendas Total = "

.text 
main: 
    li $v0, 4
    la $a0, escreva00
    syscall 

    li $v0, 5
    syscall
    add $t0, $v0, 0

    li $v0, 4
    la $a0, escreva01
    syscall 

    li $v0, 5
    syscall
    add $t1, $v0, 0

    li $v0, 4
    la $a0, escreva02
    syscall
    
    li $v0, 5
    syscall
    add $t2, $v0, 0

    mul $t3, $t0, 10
    mul $t4, $t1, 12
    mul $t5, $t2, 15

    add $t6, $t3, $t4
    add $t6, $t6, $t5

    li $v0, 4
    la $a0, escreva03
    syscall

    li $v0, 1   
    add $a0, $t6, 0
    syscall
    
    


    
    