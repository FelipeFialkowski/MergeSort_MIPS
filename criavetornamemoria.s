#iniciando vetor
addi $sp, $sp, -28
addi $s0, $sp, 0

addi $t0, $zero, 38
sw $t0, 0($s0)

addi $t0, $zero, 27
sw $t0, 4($s0)

addi $t0, $zero, 43
sw $t0, 8($s0)

addi $t0, $zero, 3
sw $t0, 12($s0)

addi $t0, $zero, 9
sw $t0, 16($s0)

addi $t0, $zero, 82
sw $t0, 20($s0)

addi $t0, $zero, 10
sw $t0, 24($s0)
#fim do inicio de vetor

#abrindo vetor auxiliar
addi $sp, $sp, -28
addi $s1, sp, 0 
#fim do vetor auxiliar
addi $a0, $zero, 0 # indice inicial
addi $a1, $zero, 6 #indice fim

jal mergesort: 

mergesort:

  #reservar espaço do recursivo
  addi $sp, $sp, -16
  #RESERVA COISAS DA CHAMADA ANTERIOR
  sw $ra, 12($sp)
  sw $fp, 8($sp)
  #inidice do começo e do fim
  sw $a1, 4($sp)
  sw $a0, 0($sp)
  #RESERVA FRAME POINTER NOVO
  addi $fp, $sp, 0


  #coloca os indices iniciais e finais em t0 e t1
  lw $t0, 0($fp)
  lw $t1, 4($fp)
  #compara eles
  slt $t2, $t0, $t1
  beq $t2, $zero, retorno

  #dividir meio
  srl $t3, $t2, 1
  
  
  



jr $ra


j fim

fim:
