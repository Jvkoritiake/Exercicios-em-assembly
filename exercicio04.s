.data 
      escreva00:.asciiz "Digite a base maior do trapezio: \n" #\n pula linha
      escreva01:.asciiz "Digite a base menor do trapezio: \n "
      escreva02:.asciiz "Digite a altura do trapezio: \n "
      escreva03:.asciiz "Area do trapezio = "

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

    add $t3, $t0, $t1
    div $t4, $t2, 2
    mul $t5, $t3, $t4

    li $v0, 4
    la $a0, escreva03
    syscall

    li $v0, 1
    add $a0, $t5, 0
    syscall



