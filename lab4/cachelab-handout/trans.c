/* 
 *
 * CS:APP Cache Lab: Understanding Cache Memories
 * NAME: Zhengxiong Zhang    USERID: zhengxiz    Version3: 6/26/2013
 * 15-213/15-513, Summer 2013    Assigned: Thuesday, Jun 18, 2013
 *
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 *
 */ 

#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"
/*
 * The bit size is 8, 32 bytes.
 */
#define BSIZE 8
#define HBSIZE 4
int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */

 /*
  * These 3 functions implement separate code optimized for each case.
  */
void transpose_32MN(int M, int N, int A[N][M], int B[M][N]);
void transpose_61MN(int M, int N, int A[N][M], int B[M][N]);
void transpose_64MN(int M, int N, int A[N][M], int B[M][N]);
void transpose_64MN2(int M, int N, int A[N][M], int B[M][N]);
void transpose_64MN3(int M, int N, int A[N][M], int B[M][N]);

char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);

/* Check for the input sizes and implement code for each case */
    if (32 == M) {
        transpose_32MN(M, N, A, B);
    }
    else if (61 == M) {
        transpose_61MN(M, N, A, B);
    }
    else {
        transpose_64MN3(M, N, A, B);
    }

    ENSURES(is_transpose(M, N, A, B));
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */

 /* 8 bits accross the row */
char trans_desc1[] = "Transpose1";
void trans1(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start, bsize, len;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    start = 0;
    bsize = BSIZE;
    len = 0;
    while (start < M) {
        len = start + bsize;
        if (len >= M) {
            bsize = M - start;
        }
        for (i = 0; i < N; i++) {
            for (j = 0; j < bsize; j++) {
                B[j + start][i] = A[i][j + start];
            }
        }
        start += bsize;
    }

    ENSURES(is_transpose(M, N, A, B));
}

/* 8 bits accross the column */
char trans_desc2[] = "Transpose2";
void trans2(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start, bsize, len;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    start = 0;
    bsize = BSIZE;
    len = 0;
    while (start < N) {
        len = start + bsize;
        if (len >= N) {
            bsize = N - start;
        }
        for (i = 0; i < M; i++) {
            for (j = 0; j < bsize; j++) {
                B[i][j + start] = A[j + start][i];
            }
        }
        start += bsize;
    }

    ENSURES(is_transpose(M, N, A, B));
}

/* 8 * 8 bits accross the row */
char trans_desc3[] = "Transpose3";
void trans3(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start1, start2;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    start1 = 0;
    start2 = 0;
    while (start2 < N) {
        while (start1 < M) {
            for (i = 0; i < BSIZE; i++) {
                for (j = 0; j < BSIZE; j++) {
                    B[j + start1][i + start2] = A[i + start2][j + start1];
                }
            }
            start1 += BSIZE;
        }
        start1 = 0;
        start2 += BSIZE;
    }

    ENSURES(is_transpose(M, N, A, B));
}

char trans_desc4[] = "Transpose4";
void trans4(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start1, start2;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    start1 = 0;
    start2 = 0;
    while (start2 < N) {
        while (start1 < M) {
            for (i = 0; i < BSIZE; i++) {
                for (j = 0; j < BSIZE; j++) {
                    B[i + start1][j + start2] = A[j + start2][i + start1];
                }
            }
            start1 += BSIZE;
        }
        start1 = 0;
        start2 += BSIZE;
    }

    ENSURES(is_transpose(M, N, A, B));
}

char trans_desc5[] = "Transpose5";
void trans5(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start1, start2;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    start1 = 0;
    start2 = 0;
    while (start1 < M) {
        while (start2 < N) {
            for (i = 0; i < BSIZE; i++) {
                for (j = 0; j < BSIZE; j++) {
                    B[i + start1][j + start2] = A[j + start2][i + start1];
                }
            }
            start2 += BSIZE;
        }
        start2 = 0;
        start1 += BSIZE;
    }

    ENSURES(is_transpose(M, N, A, B));
}
/*
 * trans - A simple baseline transpose function, 
 * not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

    ENSURES(is_transpose(M, N, A, B));
}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

    registerTransFunction(trans1, trans_desc1);
    registerTransFunction(trans2, trans_desc2);
    registerTransFunction(trans3, trans_desc3);
    registerTransFunction(trans4, trans_desc4);
    registerTransFunction(trans5, trans_desc5);

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}
/* This is the function for 32 * 32 transpose */
void transpose_32MN(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start1, start2;
    start1 = 0;
    start2 = 0;
    while (start2 < N) {
        while (start1 < M) {
            for (i = 0; i < BSIZE; i++) {
                for (j = 0; j < BSIZE; j++) {
                    if (start1 != start2) {
                        B[j + start1][i + start2] = 
                        A[i + start2][j + start1];
                    }
                    else {
                        if (0 == start1 || 16 == start1) {
                            B[j + start1 + 8][i + start2 + 8] =
                            A[i + start2][j + start1];
                        }
                        else {
                            B[j + start1 - 8][i + start2 - 8] = 
                            A[i + start2][j + start1];
                        }
                    }
                }
            }
            start1 += BSIZE;
        }
        start1 = 0;
        start2 += BSIZE;
    }
/* 
 * Along the diagonal, conflict misses come out. 
 * This code optimize for the conflict 
 */
    for (i = 0; i < BSIZE; i++) {
        for (j = 0; j < BSIZE; j++) {
            B[i][j] = B[i][j] ^ B[i + 8][j + 8];
            B[i + 8][j + 8] = B[i][j] ^ B[i + 8][j + 8];
            B[i][j] = B[i][j] ^ B[i + 8][j + 8];

            B[i + 16][j + 16] = B[i + 16][j + 16] ^ B[i + 24][j + 24];
            B[i + 24][j + 24] = B[i + 16][j + 16] ^ B[i + 24][j + 24];
            B[i + 16][j + 16] = B[i + 16][j + 16] ^ B[i + 24][j + 24];
        }
    }
}
/* This is the function for 61 * 67 transpose */
void transpose_61MN(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start, bsize, len;
/* 8 bits run through the rows */
    start = 0;
    bsize = BSIZE;
    len = 0;
    while (start < M) {
        len = start + bsize;
        if (len >= M) {
            bsize = M - start;
        }
        for (i = 0; i < N; i++) {
            for (j = 0; j < bsize; j++) {
                B[j + start][i] = A[i][j + start];
            }
        }
        start += bsize;
    }
}
/* This is the function for 64 * 64 transpose */
void transpose_64MN(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start1, start2, offset;
    start1 = 0;
    start2 = 0;
    while (start2 < N) {
        while (start1 < M) {
            if (start1 == start2) {
                if (0 == start1 || 16 == start1 ||
                32 == start1 || 48 == start1) {
                    offset = 8;
                }
                else {
                    offset = -8;
                }
            }
            else {
                offset = 0;
            }
            for (i = 0; i < BSIZE; i++) {
                for (j = 0; j < HBSIZE; j++) {
                    B[j + start1 + offset][i + start2 + offset] =
                    A[i + start2][j + start1];

                }
            }
            for (i = (BSIZE - 1); i >= 0; i--) {
                for (j = (BSIZE - 1); j >= HBSIZE; j--) {
                    B[j + start1 + offset][i + start2 + offset] =
                    A[i + start2][j + start1];
                }
            }
            start1 += BSIZE;
        }
        start1 = 0;
        start2 += BSIZE;
    }

    for (i = 0; i < BSIZE; i++) {
        for (j = 0; j < BSIZE; j++) {
            B[i][j] = B[i][j] ^ B[i + 8][j + 8];
            B[i + 8][j + 8] = B[i][j] ^ B[i + 8][j + 8];
            B[i][j] = B[i][j] ^ B[i + 8][j + 8];

            B[i + 16][j + 16] = B[i + 16][j + 16] ^ B[i + 24][j + 24];
            B[i + 24][j + 24] = B[i + 16][j + 16] ^ B[i + 24][j + 24];
            B[i + 16][j + 16] = B[i + 16][j + 16] ^ B[i + 24][j + 24];

            B[i + 32][j + 32] = B[i + 32][j + 32] ^ B[i + 40][j + 40];
            B[i + 40][j + 40] = B[i + 32][j + 32] ^ B[i + 40][j + 40];
            B[i + 32][j + 32] = B[i + 32][j + 32] ^ B[i + 40][j + 40];

            B[i + 48][j + 48] = B[i + 48][j + 48] ^ B[i + 56][j + 56];
            B[i + 56][j + 56] = B[i + 48][j + 48] ^ B[i + 56][j + 56];
            B[i + 48][j + 48] = B[i + 48][j + 48] ^ B[i + 56][j + 56];
        }
    }

}

void transpose_64MN2(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start1, start2, nextstart1, nextstart2, offset;
    start1 = 0;
    start2 = 0;
    nextstart1 = 0;
    nextstart2 = BSIZE;
    offset = 0;
    while (nextstart1 < N) {
        while (nextstart2 < M) {
            if (start1 == start2) {
                if (0 == start1 || 16 == start1 ||
                    32 == start1 || 48 == start1) {
                    offset = 8;
                }
                else {
                    offset = -8;
                }
            }
            else {
                offset = 0;
            }

            for (i = 0; i < BSIZE; i++) {
                for (j = 0; j < BSIZE; j++) {
                    if (i < HBSIZE && j >= HBSIZE) {
                        B[i + nextstart1][j + nextstart2] =
                        A[i + start2 + offset][j + start1 + offset];
                    }
                    else {
                        B[j + start1][i + start2] =
                        A[i + start2 + offset][j + start1 + offset];
                    }
                }
            }
            for (i = 0; i < HBSIZE; i++) {
                for (j = HBSIZE; j < BSIZE; j++) {
                    B[j + start1][i + start2] =
                    B[i + nextstart1][j + nextstart2];
                }
            }
            start1 = nextstart1;
            start2 = nextstart2;
            nextstart2 += BSIZE;
        }
        nextstart2 = 0;
        nextstart1 += BSIZE;
    }
    offset = -8;
    for (i = 0; i < BSIZE; i++) {
        for (j = 0; j < BSIZE; j++) {
            B[j + start1][i + start2] =
            A[i + start2 + offset][j + start1 + offset];
        }
    }

    for (i = 0; i < BSIZE; i++) {
        for (j = 0; j < BSIZE; j++) {
            B[i][j] = B[i][j] ^ B[i + 8][j + 8];
            B[i + 8][j + 8] = B[i][j] ^ B[i + 8][j + 8];
            B[i][j] = B[i][j] ^ B[i + 8][j + 8];

            B[i + 16][j + 16] = B[i + 16][j + 16] ^ B[i + 24][j + 24];
            B[i + 24][j + 24] = B[i + 16][j + 16] ^ B[i + 24][j + 24];
            B[i + 16][j + 16] = B[i + 16][j + 16] ^ B[i + 24][j + 24];

            B[i + 32][j + 32] = B[i + 32][j + 32] ^ B[i + 40][j + 40];
            B[i + 40][j + 40] = B[i + 32][j + 32] ^ B[i + 40][j + 40];
            B[i + 32][j + 32] = B[i + 32][j + 32] ^ B[i + 40][j + 40];

            B[i + 48][j + 48] = B[i + 48][j + 48] ^ B[i + 56][j + 56];
            B[i + 56][j + 56] = B[i + 48][j + 48] ^ B[i + 56][j + 56];
            B[i + 48][j + 48] = B[i + 48][j + 48] ^ B[i + 56][j + 56];
        }
    }
}

void transpose_64MN3(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, start1, start2, nextstart1, nextstart2, offset;
    start1 = 0;
    start2 = 0;
    nextstart1 = 0;
    nextstart2 = BSIZE;
    offset = 0;
    while (nextstart1 < N) {
        while (nextstart2 < M) {
            if (start1 == start2) {
                if (0 == start1 || 16 == start1 || 32 == start1 || 48 == start1) {
                    offset = 8;
                }
                else if (48 == start1) {
                    offset = 0;
                }
                else {
                    offset = -8;
                }
            }
            else {
                offset = 0;
            }

            for (i = 0; i < HBSIZE; i++) {
                for (j = 0; j < HBSIZE; j++) {
                    B[j + start1][i + start2] =
                    A[i + start2 + offset][j + start1 + offset];
                }
            }
            for (i = 0; i < HBSIZE; i++) {
                for (j = HBSIZE; j < BSIZE; j++) {
                    B[i + nextstart1][j + nextstart2] =
                    A[i + start2 + offset][j + start1 + offset];
                }
            }
            for (i = HBSIZE; i < BSIZE; i++) {
                for (j = 0; j < HBSIZE; j++) {
                    B[j + start1][i + start2] =
                    A[i + start2 + offset][j + start1 + offset];
                }
            }
            for (i = HBSIZE; i < BSIZE; i++) {
                for (j = HBSIZE; j < BSIZE; j++) {
                    B[j + start1][i + start2] =
                    A[i + start2 + offset][j + start1 + offset];
                }
            }
            for (i = 0; i < HBSIZE; i++) {
                for (j = HBSIZE; j < BSIZE; j++) {
                    B[j + start1][i + start2] =
                    B[i + nextstart1][j + nextstart2];
                }
            }
            start1 = nextstart1;
            start2 = nextstart2;
            nextstart2 += BSIZE;
        }
        nextstart2 = 0;
        nextstart1 += BSIZE;
    }
    offset = -8;
    for (i = 0; i < HBSIZE; i++) {
        for (j = 0; j < HBSIZE; j++) {
            B[j + start1][i + start2] =
            A[i + start2 + offset][j + start1 + offset];
        }
    }
    for (i = HBSIZE; i < BSIZE; i++) {
        for (j = 0; j < HBSIZE; j++) {
            B[j + start1][i + start2] =
            A[i + start2 + offset][j + start1 + offset];
        }
    }
    for (i = HBSIZE; i < BSIZE; i++) {
        for (j = HBSIZE; j < BSIZE; j++) {
            B[j + start1][i + start2] =
            A[i + start2 + offset][j + start1 + offset];
        }
    }
    for (i = 0; i < HBSIZE; i++) {
        for (j = HBSIZE; j < BSIZE; j++) {
            B[j + start1][i + start2] =
            A[i + start2 + offset][j + start1 + offset];
        }
    }


    for (i = 0; i < BSIZE; i++) {
        for (j = 0; j < BSIZE; j++) {
            B[i][j] = B[i][j] ^ B[i + 8][j + 8];
            B[i + 8][j + 8] = B[i][j] ^ B[i + 8][j + 8];
            B[i][j] = B[i][j] ^ B[i + 8][j + 8];

            B[i + 16][j + 16] = B[i + 16][j + 16] ^ B[i + 24][j + 24];
            B[i + 24][j + 24] = B[i + 16][j + 16] ^ B[i + 24][j + 24];
            B[i + 16][j + 16] = B[i + 16][j + 16] ^ B[i + 24][j + 24];

            B[i + 32][j + 32] = B[i + 32][j + 32] ^ B[i + 40][j + 40];
            B[i + 40][j + 40] = B[i + 32][j + 32] ^ B[i + 40][j + 40];
            B[i + 32][j + 32] = B[i + 32][j + 32] ^ B[i + 40][j + 40];

            B[i + 48][j + 48] = B[i + 48][j + 48] ^ B[i + 56][j + 56];
            B[i + 56][j + 56] = B[i + 48][j + 48] ^ B[i + 56][j + 56];
            B[i + 48][j + 48] = B[i + 48][j + 48] ^ B[i + 56][j + 56];
        }
    }
}
