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
addi $s1, $sp, 0 
#fim do vetor auxiliar

#parametros do mergesort
addi $a0, $zero, 0 # indice inicial
addi $a1, $zero, 6 #indice fim

jal mergesort
j fim

mergesort:

  #reservar espaço do recursivo
  addi $sp, $sp, -20
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

  #dividir meio (do outro jeito não funcionava, assim ta indo)
  add $t3, $t0, $t1
  srl $t3, $t3, 1
  sw $t3, 16($fp)#guardando valor do meio

   #COLOCAR AQUI AS CHAMADAS RECURSIVAS
  
  
#retorno da função
retorno:
lw $ra, 12($fp) #aq ele recupera o endereço pra voltar
lw $t0, 8($fp) ##recupera o indice da linha 54, não em fp pq fp a gente vai usar pro sp

addi $sp, $fp, 20 ##liberar espaço do -20
addi $fp, $t0, 0 #restaurar o ultimo fp
jr $ra #retornar



j fim

fim:
