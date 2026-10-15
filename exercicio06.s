.data 
      escreva00:.asciiz "Digite o primeiro numero: \n" #\n pula linha
      escreva01:.asciiz "Digite o segundo numero: \n "
      escreva02:.asciiz "Resultado = "
     

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

    beq $t0, $t1, entao
    j senao

    entao:
          add $t2, $t0, $t1
          
          li $v0, 1
          add $a0, $t2, 0
          syscall
          j fimse

    senao:
         mul $t3,$t0,$t1

         li $v0, 1
         add $a0, $t3, 0
         syscall
         j fimse
    fimse:

   
