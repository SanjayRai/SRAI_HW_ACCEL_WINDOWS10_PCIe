#include "sdx_cppKernel_top.h"


void matrix_mult_wrapper(data_t A[DIM][DIM], data_t B[DIM][DIM], data_t Y[DIM][DIM]){
#pragma HLS PIPELINE

   data_t in_A[DIM][DIM];
#pragma HLS ARRAY_RESHAPE variable=in_A complete dim=0
   data_t in_B[DIM][DIM];
#pragma HLS ARRAY_RESHAPE variable=in_B complete dim=0
   data_t out_Y[DIM][DIM];
#pragma HLS ARRAY_RESHAPE variable=out_Y complete dim=0

    for (int j = 0; j < DIM; j++){
        for (int i = 0; i < DIM; i++) {
            in_A[i][j] = A[i][j];
            in_B[i][j] = B[i][j];
            out_Y[i][j] = 0.0;
        }
    }
    for (int row = 0; row < DIM;row++) {
        for (int col = 0; col < DIM;col++) {
          for (int k = 0; k < DIM;k++) {
            out_Y[row][col] += in_A[row][k]* in_B[k][col];
          }
        }
    }
    for (int j = 0; j < DIM; j++){
        for (int i = 0; i < DIM; i++) {
            Y[i][j] = out_Y[i][j];
        }
    }
        
}
