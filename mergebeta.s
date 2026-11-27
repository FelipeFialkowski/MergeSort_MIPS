.data
    v:  .word 12, 6, 9, 15, 41, 30, 40   # 7 inteiros
.text
.globl main
main:
    # Carrega da memória apra o processador

    la $a0, v               # É passado o endereço base do primeiro elemento
    lw $a1, tam             # É passado o tamanho do nosso vetor

    # Chama a função que ordena

    jal mergeSort



# --- FUNÇÕES PARTICIONA ---
mergeSort:




# --- FUNÇÕES ORDENA ---
mergeSort:
    addi $t0, $a1, -1   # É iniciamos nosso vetor na posição 0
    sll $t1, $t0, 2     # Calcula quantas casas o último elemento está do primeiro
    add $t1, $t0, $t1   # Encontramos qual é a casa do último elemento

    la $t1,vetor
    addi $t1, $t1, 28 
    li $t0, 1
    li $t1, 5

    bgt $t0, $t1, eh_maior   # Pula para 'eh_maior' se $t0 > $t1 (1 > 5)

