#include "matrix_determinant_class.h"
#include "matrix_utility_class.h"
#include "sdx_cppKernel_top.h"


void matrix_operation_wrapper(data_t A[DIM][DIM], data_t Y[DIM][DIM]){
//#pragma HLS PIPELINE

   data_t co_fac_A[DIM][DIM];
#pragma HLS ARRAY_RESHAPE variable=co_fac_A complete dim=0
   data_t adjoint_A[DIM][DIM];
#pragma HLS ARRAY_RESHAPE variable=adjoint_A complete dim=0
   matrix_utility_class<data_t, DIM> my_matrix; 
   matrix_determinant_class<data_t, DIM> my_determinant;
   data_t determinant_A;

    my_matrix.cofactor(A,co_fac_A);
    my_matrix.transpose(co_fac_A,adjoint_A);
    determinant_A = my_determinant.crout_decomposition(A);

    for (int j = 0; j < DIM; j++){
        for (int i = 0; i < DIM; i++) {
            Y[i][j] = ((adjoint_A[i][j])/determinant_A);
            
        }
    }
        
}
