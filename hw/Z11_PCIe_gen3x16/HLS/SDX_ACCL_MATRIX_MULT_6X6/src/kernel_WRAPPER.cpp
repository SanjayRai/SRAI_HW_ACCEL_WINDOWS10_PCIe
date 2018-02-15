#include<stdio.h>
#include "sdx_cppKernel_top.h"

void kernel_WRAPPER (data_t in_arg0[SDX_CU_LOCAL_IN_SIZE], data_t in_arg1[SDX_CU_LOCAL_IN_SIZE], data_t out_arg0[SDX_CU_LOCAL_OUT_SIZE]) {
#pragma HLS PIPELINE II=1
data_t fn_in_arg0[DIM][DIM];
#pragma HLS ARRAY_RESHAPE variable=fn_in_arg0 complete dim=0
data_t fn_in_arg1[DIM][DIM];
#pragma HLS ARRAY_RESHAPE variable=fn_in_arg1 complete dim=0
data_t fn_out_arg0[DIM][DIM];
#pragma HLS ARRAY_RESHAPE variable=fn_out_arg0 complete dim=0
int index;
    for (int row = 0; row < DIM;row++) {
        for (int col = 0; col < DIM;col++) {
            index = col+(row*DIM);
            fn_in_arg0[row][col] = in_arg0[index];
        }
    }

    for (int row = 0; row < DIM;row++) {
        for (int col = 0; col < DIM;col++) {
            index = col+(row*DIM);
            fn_in_arg1[row][col] = in_arg1[index];
        }
    }

    matrix_mult_wrapper(fn_in_arg0, fn_in_arg1, fn_out_arg0);

    for (int row = 0; row < DIM;row++) {
        for (int col = 0; col < DIM;col++) {
            index = col+(row*DIM);
            out_arg0[index] = fn_out_arg0[row][col];
        }
    }
}
