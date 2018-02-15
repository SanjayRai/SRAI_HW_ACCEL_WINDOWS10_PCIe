#include "sdx_cppKernel_top.h"
//#include "hls_math.h"

void passthru (data_t *a_in, data_t *results) {
#pragma HLS PIPELINE
    *results = (*a_in);
    return;
}

