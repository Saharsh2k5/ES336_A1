#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define N 1024

void multiply(int **A, int **B, int **C){
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }        
}

int main(){    
    
    int **A = malloc(N * sizeof(int*));
    int **B = malloc(N * sizeof(int*));
    int **C = malloc(N * sizeof(int*));
    
    for (int i = 0; i < N; i++) {
        A[i] = malloc(N * sizeof(int));
        B[i] = malloc(N * sizeof(int));
        C[i] = calloc(N, sizeof(int)); 
    }
    
    for (int i = 0; i < N; i++){
        for (int j = 0; j < N; j++) {
            A[i][j] = 4096;
            B[i][j] = 1024;
        }
    }

    struct timespec start, end;
    clock_gettime(CLOCK_MONOTONIC, &start);
    
    multiply(A, B, C);
    
    clock_gettime(CLOCK_MONOTONIC, &end);
   
    
    double time_taken = (end.tv_sec - start.tv_sec) + 
                        (end.tv_nsec - start.tv_nsec) / 1e9;
    
    printf("Matrix multiplication time: %.6f seconds\n", time_taken);
    
    for (int i = 0; i < N; i++) {
        free(A[i]); free(B[i]); free(C[i]);
    }
    free(A); free(B); free(C);
    
    return 0;
}

