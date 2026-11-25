void intercala(int *vetor, int inicio, int meio, int fim) {
    if (inicio >= fim) {
        return;
    }

    int i = inicio;
    int j = meio + 1;
    int tamanho = fim - inicio + 1;
    int vetorAux[tamanho];

    for (int k = 0; k < tamanho; k++) {
        if (j > fim || (i <= meio && vetor[i] <= vetor[j])) {
            vetorAux[k] = vetor[i];
            i++;
        } else {
            vetorAux[k] = vetor[j];
            j++;
        }
    }

    for (int k = 0; k < tamanho; k++) {
        vetor[inicio + k] = vetorAux[k];
    }
}

void mergeSort(int *vetor, int inicio, int fim) {
    if (inicio >= fim) {
        return;
    }

    int meio = (inicio + fim) / 2;

    mergeSort(vetor, inicio, meio);
    mergeSort(vetor, meio + 1, fim);
    intercala(vetor, inicio, meio, fim);
}