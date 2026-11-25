.data

    vetor: .word 38, 27, 43, 3, 9, 82, 10
    tamanho: .word 7

.text
.globl main

main:

    la $a0, vetor
    li $a1, 0
    lw $t0, tamanho
    addi $a2, $t0, -1

    jal merge_sort

    li $v0, 10
    syscall

merge_sort:

    jr $ra
