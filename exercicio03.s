.data 
      escreva00:.asciiz "Digite a hora normal trabalhada no Mes: \n" #\n pula linha
      escreva01:.asciiz "Digite a hora extra trabalhada no Mes: : \n"
      escreva02:.asciiz "Salario Bruto =  "
      escreva03:.asciiz "Salario Liquido (considerando desconto) = \"

.text 
main: 
    li $v0, 4
    la $a0, escreva00
    syscall 

    li $v0, 5
    syscall
    mul $t0, $v0, 10

    li $v0, 4
    la $a0, escreva01
    syscall 

    li $v0, 5
    syscall
    mul $t1, $v0, 15

    li $v0, 4
    la $a0, escreva02
    syscall

    li $v0, 1   
    add $a0, $t0, 0
    syscall

    sub $t1, $t1, 100
    add $t1, $t1, $t0
 
    li $v0, 4
    la $a0, escreva03 
    syscall

    li $v0, 1   
    add $a0, $t1, 0
    syscall


    
    
    
