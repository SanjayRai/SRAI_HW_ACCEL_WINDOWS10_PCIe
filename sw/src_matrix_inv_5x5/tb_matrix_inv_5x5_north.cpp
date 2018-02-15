#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <chrono>
#include "cycle.h"
#include "sdx_cppKernel_top.h" 


#include "pcie_memio_winx.h"
#include "srai_accel_utils.h" 
#define ZERO_f 0.1e-12
#define PRINT_SAMPLE_OUT false
using namespace std;

double getCPUTime();


int check_if_Indentity_Matrix (data_t matrix_A[DIM][DIM]){
int id_error_count;
    id_error_count = 0;
    for (int row = 0; row < DIM;row++) {
        for (int col = 0; col < DIM;col++) {
            if (row == col) {
                if (fabs(matrix_A[row][col] -1.0f) > 0.1e-4){
                    cout << "ERROR DBG :: " << fabs(matrix_A[row][col] -1.0f) << endl;
                    id_error_count++;
                } 
            } else if (fabs(matrix_A[row][col]) > 0.1e-4){
                    id_error_count++;
            }
        }
    }
    return id_error_count;
}

void matrix_mult (data_t matrix_A[DIM][DIM], data_t matrix_B[DIM][DIM], data_t mult[DIM][DIM]) {
    for (int row = 0; row < DIM;row++) {
        for (int col = 0; col < DIM;col++) {
            mult[row][col] = 0.0f;
        }
    }
    for (int row = 0; row < DIM;row++) {
        for (int col = 0; col < DIM;col++) {
          for (int k = 0; k < DIM;k++) {
            mult[row][col] += matrix_A[row][k]* matrix_B[k][col];
          }
        }
    }
}

void print_matrix (data_t matrix_val[DIM][DIM]) {
    for (int row = 0; row < DIM;row++) {
        for (int col = 0; col < DIM;col++) {
            if (fabs(matrix_val[row][col]) < 1.0e-4) {
                matrix_val[row][col] = 0.0f;
            }
            cout << matrix_val[row][col] << " "; 
        }
        cout << endl;
    }
        cout << "------------------------------------"<< endl;

}

void gen_test_matrix(srai_mem_conv_IN0 *a) {

//     data_t temp[DIM][DIM] = {{1.0f, 2.0f, 3.0f, 4.0f},
//                              {5.0f, 6.0f, 7.0f, 8.0f},
//                              {2.0f, 6.0f, 4.0f, 8.0f},
//                              {3.0f, 1.0f, 1.0f, 2.0f}};
   data_t temp[DIM][DIM] = {{2.0f,   4.0f,  6.0f,  8.0f, 1.0f},
                            {10.0f, 12.0f, 14.0f, 16.0f, 2.0f},
                            {4.0f,  12.0f,  8.0f, 16.0f, 3.0f},
                            {6.0f,   2.0f,  2.0f,  4.0f, 5.0f},
                            {4.0f,   2.0f,  4.0f,  6.0f, 7.0f}};
   
//     //         data_t temp[DIM][DIM] = {{1.0f, 2.0f, 3.0f, 4.0f, 1.0f},
//     //                                  {5.0f, 6.0f, 7.0f, 8.0f, 2.0f},
//     //                                  {2.0f, 6.0f, 4.0f, 8.0f, 3.0f},
//     //                                  {3.0f, 1.0f, 1.0f, 2.0f, 4.0f},
//     //                                  {1.0f, 4.0f, 5.0f, 6.0f, 5.0f}};

  data_t random_scale;

    for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
        for (int i = 0 ; i < SDX_CU_LOCAL_IN_SIZE; i++) {
            //random_scale = (data_t)(rand() % (int)32768.0)/321.01;
            random_scale = (data_t)(1.0f + ((rand() % (int)32768.0)/321.01));
            for (int row = 0; row < DIM;row++) {
                for (int col = 0; col < DIM;col++) {
                    a->my_data_t[row][col] = (temp[row][col])*random_scale; 
                }
            }
            a++;
        }
    }
}

void print_gen_test_matrix(srai_mem_conv_IN0 *a) {

    for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
        for (int i = 0 ; i < SDX_CU_LOCAL_IN_SIZE; i++) {
            for (int row = 0; row < DIM;row++) {
                for (int col = 0; col < DIM;col++) {
                    cout << a->my_data_t[row][col] << " ";
                }
                cout << endl;
            }
                cout << endl;
                cout << "------------------------------------"<< endl;
                a++;
        }
    }
}


int main(int argc, char **argv) {

  int compute_itn_count;
    bool Exit_f_condition = false;
  time_t t;
  srand((unsigned) time(&t));
  double high_res_elapsed_time;
  double high_res_elapsed_time_HW = 0.0f;
  double high_res_elapsed_time_SW = 0.0f;
  ticks t0, t1;
  chrono::high_resolution_clock::time_point start_t;
  chrono::high_resolution_clock::time_point stop_t;
  double tick_elsped_time_HW = 0.0f; 
  double tick_elsped_time_SW = 0.0f; 
  chrono::duration<double> elapsed_hi_res;


  int status = -1;

  sdx_data_t *a_in_ptr;
  char *a_in_ptr_c_POSIX = NULL;
  srai_mem_conv_IN0 *a_in_ptr_c;
  srai_mem_conv_OUT0 *y_out_ptr_c;
  srai_mem_conv_IN0 *a_in_head_c;
  srai_mem_conv_OUT0 *y_out_head_c;
  sdx_data_t *y_out_ptr;
  cout << "Srai_ DBG NUMBER_OF_DATA_SETS  =  " << NUMBER_OF_DATA_SETS << endl;
  cout << "Srai_ DBG GLOBAL_DATA_IN_SIZE  =  " << GLOBAL_DATA_IN_SIZE << endl;
  cout << "Srai_ DBG GLOBAL_DATA_OUT_SIZE =  " << GLOBAL_DATA_OUT_SIZE << endl;

  //posix_memalign((void **)&a_in_ptr_c_POSIX, 4096/*alignment*/, GLOBAL_DATA_IN_SIZE_BYTES + 4096);
  //assert(a_in_ptr_c_POSIX);
  //a_in_ptr_c = (srai_mem_conv_IN0 *)a_in_ptr_c_POSIX;
  
  a_in_ptr_c = new srai_mem_conv_IN0[NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_IN_SIZE];
  a_in_head_c = a_in_ptr_c;
  y_out_ptr_c = new srai_mem_conv_OUT0[NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_OUT_SIZE];
  y_out_head_c = y_out_ptr_c;

  printf("-------------------------------------------------------------\n");
  printf("Create Test Data Set\n");
  printf("Note DATA_IN_SIZE (Input Memory size in bytes  ) = %d (%x)\n",(GLOBAL_DATA_IN_SIZE_BYTES),(GLOBAL_DATA_IN_SIZE_BYTES));
  printf("Note DATA_OUT_SIZE(Input Memory size in bytes  ) = %d (%x)\n",(GLOBAL_DATA_OUT_SIZE_BYTES),(GLOBAL_DATA_OUT_SIZE_BYTES));
  cout << "Size of data_t = " << sizeof(data_t) <<  " Bytes" << endl;
  cout << "Number of Input Operands =  " << NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_IN_SIZE*NUM_ELEMENTS_PER_SDX_DATA_BEAT<< endl;
  cout << "Number of Output Operands = " << NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_OUT_SIZE*NUM_ELEMENTS_PER_SDX_DATA_BEAT<< endl;
  cout << "Size of srai_mem_conv_IN0 = " << sizeof(srai_mem_conv_IN0) <<  " Bytes" << endl;
  cout << "True Size (in Bytes) of Input Data  = " << sizeof(data_t)*NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_IN_SIZE*NUM_ELEMENTS_PER_SDX_DATA_BEAT<< endl;
  cout << "Allocated Size (in Bytes) of a_in_ptr = " <<  GLOBAL_DATA_IN_SIZE_BYTES  << " | 0x"<< hex <<  GLOBAL_DATA_IN_SIZE_BYTES << endl;
  cout << dec;
  cout << "Allocated Size (in Bytes) of a_in_ptr_c = " << sizeof(srai_mem_conv_IN0)*NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_IN_SIZE << " | 0x" << hex << sizeof(srai_mem_conv_IN0)*NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_IN_SIZE << endl;
  cout << dec;
  printf("-------------------------------------------------------------\n\n\n");

    //Fill ddr4_Memory wr_data_buffer
    cout << "Initializing Memory with InputA args\n";
    gen_test_matrix(a_in_ptr_c);
    a_in_ptr = (sdx_data_t *)a_in_head_c;
    y_out_ptr = (sdx_data_t *)y_out_head_c;

    //print_gen_test_matrix(a_in_ptr_c);
    a_in_ptr_c = a_in_head_c;
    cout << "Memory Initialized with test Data\n";

// Compile for SRAI custom HLS accelerator platform 
    string PR_binFile_name;
    unsigned int xfer_count ;

    if (argc != 2) {
        printf("usage: %s fpga_bin_file\n", argv[0]);
        return -1;
    }

    PR_binFile_name = argv[1];


    high_res_elapsed_time = 0.0;

    cout << "Initializing FPGA\n";
    fpga_mmio_winx *my_fpga_xDMA_ptr = new fpga_mmio_winx;

    Exit_f_condition = my_fpga_xDMA_ptr->initialize_xDMA();
    if (Exit_f_condition) goto Exit_f;

    fpga_test_AXIL_LITE_8KSCRATCHPAD_BRAM (my_fpga_xDMA_ptr);
    cout << "Done Testing Axi_Lite ScratchPad BRAM\n";

    cout << " ............... Programing PR clock ------------------ " << endl;
    fpga_PROGRAM_PR_CLOCK (my_fpga_xDMA_ptr, HW_Kernel_frequency);
    cout << " ....DONE ...... Programing PR clock ------------------ " << endl;

    cout << " ............... Programing PR Bitstream ------------------ " << endl;
    fpga_PROGRAM_NORTH_PR(my_fpga_xDMA_ptr, PR_binFile_name);
    cout << " ............... Done Programing PR Bitstream ------------------ " << endl;

    cout << " ............... DMA xfer of Input Data ------------------ " << endl;
    start_t = chrono::high_resolution_clock::now();
    t0 = getticks();
    Exit_f_condition = fpga_xfer_data_to_card64(my_fpga_xDMA_ptr, AXI_MM_DDR4_BASE_NORTH_in_C0, (char*)a_in_ptr, (GLOBAL_DATA_IN_SIZE_BYTES));
    if (Exit_f_condition) goto Exit_f;

    //start_t = chrono::high_resolution_clock::now();
    //t0 = getticks();
    fpga_run_NORTH_PR64(my_fpga_xDMA_ptr, AXI_MM_DDR4_BASE_NORTH_in_C0, AXI_MM_DDR4_BASE_NORTH_results_C0, (NUMBER_OF_DATA_SETS));
    compute_itn_count = fpga_check_compute_done_NORTH_PR(my_fpga_xDMA_ptr);
//     t1 = getticks();
//     tick_elsped_time_HW = elapsed(t1,t0); 
//     stop_t = chrono::high_resolution_clock::now();
//    cout << " ............... compute iteration count = " << compute_itn_count << endl;
    Exit_f_condition = fpga_xfer_data_from_card64(my_fpga_xDMA_ptr, AXI_MM_DDR4_BASE_NORTH_results_C0, (char*)y_out_ptr, (GLOBAL_DATA_OUT_SIZE_BYTES));
    if (Exit_f_condition) goto Exit_f;

    t1 = getticks();
    tick_elsped_time_HW = elapsed(t1,t0); 
    stop_t = chrono::high_resolution_clock::now();
    elapsed_hi_res = stop_t - start_t ;
    high_res_elapsed_time = elapsed_hi_res.count();
    high_res_elapsed_time_HW = high_res_elapsed_time;
    cout << "HLS Execution time =  " <<  high_res_elapsed_time << "s\n";
    cout << "HLS THroughput =  " <<  (GLOBAL_DATA_OUT_SIZE_BYTES/high_res_elapsed_time) << " Bytes/s\n";

    status = 0; // all functions ran successfully

    printf (" ------------   Results  ------------------------------\n");
    printf (" ------------------------------------------------------\n");
    data_t in_arg_0[DIM*DIM];
    data_t out_arg_0[DIM*DIM];
    data_t temp_A[DIM][DIM];
    data_t temp_Y[DIM][DIM];
    data_t result_sw[DIM][DIM];
    data_t mult[DIM][DIM];
    int total_id_error;
    int curr_test_error;
    total_id_error = 0;
    uint32_t random_index[4];

    for (int i = 0; i < 4; i++) {
        random_index[i]  = (uint32_t)(rand() % NUMBER_OF_DATA_SETS); 
    }
    high_res_elapsed_time = 0.0;
    for (int j = 0 ; j < NUMBER_OF_DATA_SETS; j++) {
    curr_test_error = 0;
        for (int i = 0 ; i < SDX_CU_LOCAL_SIZE; i++) {
            for (int row = 0; row < DIM;row++) {
                for (int col = 0; col < DIM;col++) {
                    temp_A[row][col] = a_in_ptr_c->my_data_t[row][col];
                    temp_Y[row][col] = y_out_ptr_c->my_data_t[row][col];
                }
            }
            a_in_ptr_c++;
            y_out_ptr_c++;
            auto start_t = chrono::high_resolution_clock::now();
            t0 = getticks();
            matrix_operation_wrapper(temp_A, result_sw);
            t1 = getticks();
            auto stop_t = chrono::high_resolution_clock::now();
            chrono::duration<double> elapsed_hi_res = stop_t - start_t ;
            high_res_elapsed_time += elapsed_hi_res.count();
            tick_elsped_time_SW += elapsed(t1,t0); 
            for (int row = 0; row < DIM;row++) {
                for (int col = 0; col < DIM;col++) {
                    if (fabs(result_sw[row][col]- temp_Y[row][col]) > 0.1e-4) {
                        curr_test_error++;
                        //cout << "Error !! Expected :" << mult_sw[row][col] << "  but got : " << temp_Y[row][col] << endl;
                    }
                }
            }
            if (curr_test_error != 0) {
                total_id_error++;
//                 cout << " -------- Expected-------\n";
//                 print_matrix(mult_sw);
//                 cout << " -------- Got from HW ---\n";
//                 print_matrix(temp_Y);
            }

            if ( ((j == random_index[0]) | (j == random_index[1]) | (j == random_index[2]) | (j == random_index[3])) & PRINT_SAMPLE_OUT ) {
                cout << "Input Matrix .........\n";
                print_matrix(temp_A);
                cout << "Output  Matrix .........\n";
                print_matrix(temp_Y);
                cout << "Identity  Matrix .........\n";
                matrix_mult (temp_A, temp_Y, mult);
                print_matrix(mult);
            }
        }
    }
    high_res_elapsed_time_SW = high_res_elapsed_time;
    printf ("\n");
    cout << ".....................................................\n";
    cout << "SW Execution time =  " <<  high_res_elapsed_time << "s\n";
    cout << "SW THroughput =  " <<  (GLOBAL_DATA_OUT_SIZE_BYTES/high_res_elapsed_time) << " Bytes/s\n";
    if (total_id_error) {
        cout << "TEST UnSucessful! : Total Errors  =  " << total_id_error << endl; 
    } else {
        cout << "TEST Sucessful : Total Errors  =  " << total_id_error << endl; 
    }
    cout << "Gain (SW_time/HW_time)  =  " << (high_res_elapsed_time_SW/high_res_elapsed_time_HW) << endl;
    cout << "Tick  (SW_time)  =  " << (tick_elsped_time_SW) << endl;
    cout << "Tick  (HW_time)  =  " << (tick_elsped_time_HW) << endl;
    cout << "RDTSC based Gain (tick_elsped_time_SW/tick_elsped_time_HW)  =  " << (tick_elsped_time_SW/tick_elsped_time_HW) << endl;
    cout << "Highres  (SW_time)  =  " << (high_res_elapsed_time_SW) << endl;
    printf ("%d :: Software Number of %dx%d floating point Matrix Multiplies per sec = %f \n",(NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_SIZE), DIM, DIM, (NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_SIZE)/high_res_elapsed_time_SW);
    printf ("%d :: Hawdware Number of %dx%d floating point Matrix Multiplies per sec = %f \n",(NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_SIZE), DIM, DIM, (NUMBER_OF_DATA_SETS*SDX_CU_LOCAL_SIZE)/high_res_elapsed_time_HW);

    printf ("-----------------------------------------------------\n");

    cout << "Results verifcation complete " << endl;
    cout << "Total Error = " << total_id_error << endl;

    // ------------ Clean -----------------------
Exit_f:
    my_fpga_xDMA_ptr->fpga_xDMA_clean();
    delete my_fpga_xDMA_ptr;
    delete [] a_in_head_c;
    //free(a_in_ptr_c_POSIX);
    delete [] y_out_head_c;
    return status;
}
