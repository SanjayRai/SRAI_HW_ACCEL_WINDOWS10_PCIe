#include <string.h>

#include "sdx_cppKernel_top.h"
#include "sdx_pack_unpack.h" 

void sdx_cppKernel_top(sdx_data_t *a_in, sdx_data_t *y_out, unsigned int NUMBER_OF_DATA_SETS_t) {
#pragma HLS INTERFACE m_axi port=a_in offset=slave depth=HLS_AXI_SIM_IN_DEPTH latency=100 bundle=gmem num_read_outstanding=32 num_write_outstanding=32 max_read_burst_length=16 max_write_burst_length=16
#pragma HLS INTERFACE m_axi port=y_out offset=slave depth=HLS_AXI_SIM_OUT_DEPTH latency=100 bundle=gmem num_read_outstanding=32 num_write_outstanding=32 max_read_burst_length=16 max_write_burst_length=16
#pragma HLS INTERFACE s_axilite port=a_in bundle=control
#pragma HLS INTERFACE s_axilite port=y_out bundle=control
#pragma HLS INTERFACE s_axilite port=NUMBER_OF_DATA_SETS_t bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    sdx_data_t bufa_val[SDX_CU_LOCAL_IN_SIZE];
    sdx_data_t bufy_val[SDX_CU_LOCAL_OUT_SIZE];
    sdx_pack_unpack<srai_conv> my_pack_unpack;

    sdx_cppKernel_top_local_data_loop:for (unsigned int i = 0; i < NUMBER_OF_DATA_SETS_t; i++) {
    #pragma HLS LOOP_TRIPCOUNT min=HLS_SDX_WRAPPER_TRIP_COUNT max=HLS_SDX_WRAPPER_TRIP_COUNT
    #pragma HLS PIPELINE II=HLS_SDX_WRAPPER_II
        memcpy(bufa_val, (const sdx_data_t*)a_in, SDX_BUS_WIDTH_BYTES*SDX_CU_LOCAL_IN_SIZE);
        a_in += SDX_CU_LOCAL_IN_SIZE;
        kernel_WRAPPER_label0:for (unsigned int itn_num = 0 ; itn_num < SDX_CU_LOCAL_SIZE; itn_num++) {
        #pragma HLS PIPELINE II=1
            data_t fn_in_arg0[NUM_ELEMENTS_PER_SDX_DATA_BEAT*NUM_INPUT_KERNEL_FUNCTION_ARGUMENTS];
            #pragma HLS ARRAY_PARTITION variable=fn_in_arg0
            data_t fn_out_arg0[NUM_ELEMENTS_PER_SDX_DATA_BEAT*NUM_OUTPUT_KERNEL_FUNCTION_ARGUMENTS];
            #pragma HLS ARRAY_PARTITION variable=fn_out_arg0
            for (unsigned int k = 0 ; k < NUM_INPUT_KERNEL_FUNCTION_ARGUMENTS; k++) {
                my_pack_unpack.unpack_sdx_512_data(&bufa_val[(itn_num*NUM_INPUT_KERNEL_FUNCTION_ARGUMENTS)+k], &fn_in_arg0[NUM_ELEMENTS_PER_SDX_DATA_BEAT*k]);
            }

            kernel_WRAPPER (&fn_in_arg0[(NUM_ELEMENTS_PER_SDX_DATA_BEAT*0)], &fn_in_arg0[(NUM_ELEMENTS_PER_SDX_DATA_BEAT*1)], &fn_out_arg0[(NUM_ELEMENTS_PER_SDX_DATA_BEAT*0)]);

            for (unsigned int k = 0 ; k < NUM_OUTPUT_KERNEL_FUNCTION_ARGUMENTS; k++) {
                my_pack_unpack.pack_sdx_512_data(&bufy_val[(itn_num*NUM_OUTPUT_KERNEL_FUNCTION_ARGUMENTS)+k], &fn_out_arg0[NUM_ELEMENTS_PER_SDX_DATA_BEAT*k]);
            }
        }
        memcpy(y_out, bufy_val, SDX_BUS_WIDTH_BYTES*SDX_CU_LOCAL_OUT_SIZE);
        y_out += SDX_CU_LOCAL_OUT_SIZE;
    }
    return;
}

