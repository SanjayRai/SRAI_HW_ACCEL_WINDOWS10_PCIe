#include "sdx_cppKernel_top.h"

void kernel_WRAPPER (data_t a_in_0[SDX_CU_LOCAL_IN_SIZE], data_t a_in_1[SDX_CU_LOCAL_IN_SIZE], data_t results[SDX_CU_LOCAL_OUT_SIZE]) {
#pragma HLS PIPELINE II=1

    kernel_WRAPPER_label0:for (int index = 0; index < NUM_ELEMENTS_PER_SDX_DATA_BEAT;index++) {
        floating_point_vector_mult (&a_in_0[index], &a_in_1[index], &results[index]);
    }
    return;
}
