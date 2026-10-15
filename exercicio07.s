.data 
      escreva00:.asciiz "Digite um numero: \n" #\n pula linha
      escreva01:.asciiz "Resultado = "
     

.text 
main: 

    li $v0, 4
    la $a0, escreva00
    syscall
   
    li $v0, 5
    syscall
    add $t0, $v0, 0

    rem $t1, $t0, 2

     beq $t1, 0, entao
    j senao

    entao:
          add $t2, $t0, 5
          
          li $v0, 1
          add $a0, $t2, 0
          syscall
          j fimse

    senao:
         add $t2,$t0,8

         li $v0, 1
         add $a0, $t2, 0
         syscall
         j fimse
    fimse:


