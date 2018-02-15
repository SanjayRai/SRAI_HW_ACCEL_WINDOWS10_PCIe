#include "sdx_cppKernel_top.h"

void kernel_WRAPPER (data_t in_arg0[SDX_CU_LOCAL_IN_SIZE], data_t out_arg0[SDX_CU_LOCAL_OUT_SIZE]) {
#pragma HLS PIPELINE II=1
    kernel_WRAPPER_label0:for (int index = 0; index < NUM_ELEMENTS_PER_SDX_DATA_BEAT;index++) {
        passthru (&in_arg0[index], &out_arg0[index]);
    }
    return;
}
