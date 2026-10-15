.data 
      escreva00:.asciiz "Digite a base de um retangulo: \n" #\n pula linha
      escreva01:.asciiz "Digite a altura do retangulo \n ="
      escreva02:.asciiz "Area do retangulo ="
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

    mul $t2, $t0, $t1

    li $v0, 4
    la $a0, escreva02
    syscall

    li $v0, 1   
    add $a0, $t2, 0
    syscall
    
    


    
    