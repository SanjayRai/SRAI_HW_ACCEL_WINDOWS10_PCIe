#include "sdx_cppKernel_top.h"
//#include "hls_math.h"

void floating_point_vector_mult (data_t *a_in, data_t *b_in, data_t *results) {
#pragma HLS PIPELINE

	    *results = ((*a_in)*(*b_in));
}

