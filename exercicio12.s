.data 
      escreva00:  .asciiz "Digite uma altura em cm: \n" 
      escreva01:  .asciiz "\n menor altura \n:   "
      escreva02:  .asciiz " \n maior altura \n: "
.text 
main: 
#$s0 é o acumulador do resultado de cada altura
#$s1 é a menor altura
#s2 é a maior altura
li $s0, 0

enquanto:
        li $v0,4
        la $a0,escreva00
        syscall
  
        li $v0,5
        syscall
        add $t0,$v0,0

        beq $s0, 0, calculo1
        j calculo2

        calculo1:
                add $s1,$t0,0
                add $s2, $t0,0
                add $s0, $s0, 1
                j enquanto
                
        calculo2:
                ble $s0, 15, calculo3
                j mostra_resultado

        calculo3:
                blt $t0,$s1, calculo4
                add $s0, $s0, 1
                j calculo5
 
        calculo4:
                add $s1,$t0,0
                add $s0, $s0, 1
                j enquanto

        calculo5:
                bgt $t0,$s2, calculo6
                add $s0, $s0, 1
                j enquanto

        calculo6:
                 add $s2, $t0, 0
                 add $s0, $s0, 1
                 j enquanto

mostra_resultado:
                li $v0, 4
                la $a0, escreva01
                syscall

                li $v0, 1
                add $a0,$s1,0
                syscall

                li $v0, 4
                la $a0, escreva02
                syscall

               li $v0, 1
               add $a0,$s2,0
               syscall

               
