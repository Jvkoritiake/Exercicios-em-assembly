.data 
      escreva00:.asciiz "Digite um numero (negativo ou maior que 100 para apresentar resultados): \n" #\n pula linha
      escreva02:  .asciiz "\n--- Resultados ---\n"
      escreva03:  .asciiz "Intervalo [0-25]:   "
      escreva04:  .asciiz "\nIntervalo [26-50]:  "
      escreva05:  .asciiz "\nIntervalo [51-75]:  "
      escreva06:  .asciiz "\nIntervalo [76-100]: "
.text 
main: 
#$t0,$t1,$t2,$t3 são os acumuladores do resultado de cada intervalo respectivamente

li $t0, 0
li $t1, 0
li $t2, 0
li $t3, 0

enquanto:
        li $v0,4
        la $a0,escreva00
        syscall
  
        li $v0,5
        syscall
        add $s0,$v0,0

        blt $s0, 0, mostra_resultado
        bge $s0, 100, mostra_resultado
        j senao

       senao:
             ble $s0, 25, entao
             j senao1

             entao:
                   add $t0, $t0, 1
                   j enquanto

       senao1:
              ble $s0, 50, entao1
              j senao2

              entao1:
                     add $t1,$t1, 1
                     j enquanto
 
      senao2:
             ble $s0, 75, entao2
             j senao3

             entao2:
                    add $t2, $t2, 1
                    j enquanto
      senao3:
             ble $s0,100, entao3
             j enquanto
         
             entao3:
                    add $t3, $t3, 1
                    j enquanto


mostra_resultado:
                 li $v0, 4
                 la $a0, escreva03
                 syscall
 
                 li $v0, 1
                 add $a0, $t0, 0
                 syscall

                 li $v0, 4
                 la $a0, escreva04
                 syscall
 
                 li $v0, 1
                 add $a0, $t1, 0
                 syscall

                 li $v0, 4
                 la $a0, escreva05
                 syscall
 
                 li $v0, 1
                 add $a0, $t2, 0
                 syscall

                 li $v0, 4
                 la $a0, escreva06
                 syscall
 
                 li $v0, 1
                 add $a0, $t3, 0
                 syscall

                 
               


                 





             

