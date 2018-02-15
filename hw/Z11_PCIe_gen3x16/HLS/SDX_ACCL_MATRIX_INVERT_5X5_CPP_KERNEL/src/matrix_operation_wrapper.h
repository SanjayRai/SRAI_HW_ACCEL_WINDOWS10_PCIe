#ifndef CROUT_DECOMPOSITION_WRAPPER_H_
#define CROUT_DECOMPOSITION_WRAPPER_H_

#define DIM 5
typedef float matrix_data_t;
//typedef double matrix_data_t;
//typedef ap_fixed<16,8> matrix_data_t;
//typedef ap_fixed<16,8> matrix_data_t;

void matrix_operation_wrapper(matrix_data_t A[DIM][DIM], matrix_data_t Y[DIM][DIM]);

#endif // CROUT_DECOMPOSITION_WRAPPER_H_
