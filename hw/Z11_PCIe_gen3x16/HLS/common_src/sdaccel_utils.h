#ifndef SDACCEL_UTILITIES_H_
#define SDACCEL_UTILITIES_H_
//

#include <CL/opencl.h>
#include <stdio.h>

template <class input_data_type, class output_data_type, int NUM_OF_COMPUTE_UNITS, int LOCAL_DATA_IN_SIZE, int LOCAL_DATA_OUT_SIZE>
class fpga_hw_accel {


    private:

        cl_platform_id platform_id;         // platform id
        cl_device_id device_id;             // compute device id
        cl_context context;                 // compute context
        cl_command_queue commands;          // compute command queue
        cl_program program;                 // compute program
        cl_kernel kernel[NUM_OF_COMPUTE_UNITS];               // compute kernel
        cl_mem inputs[NUM_OF_COMPUTE_UNITS][10];                     // device memory used for the input array
        cl_mem outputs[NUM_OF_COMPUTE_UNITS][10];                      // device memory used for the output array
        int num_input_args;
        int num_output_args;
        unsigned int num_data_sets;
        int in_args_size_vec[10];
        int out_args_size_vec[10];


    int load_file_to_memory(const char *filename, char **result)
    {
      unsigned int size = 0;
      FILE *f = fopen(filename, "rb");
      if (f == NULL)
      {
        *result = NULL;
        return -1; // -1 means file opening fail
      }
      fseek(f, 0, SEEK_END);
      size = ftell(f);
      fseek(f, 0, SEEK_SET);
      *result = (char *)malloc(size+1);
      if (size != fread(*result, sizeof(char), size, f))
      {
        free(*result);
        return -2; // -2 means file reading fail
      }
      fclose(f);
      (*result)[size] = 0;
      return size;
    }



        

    // For C/C++ Kernels Partition the "Global" Dataset to multiple "Local" dataset and call clSetKernelArg and clEnqueueTask multiple times.

    public:

    fpga_hw_accel(void):num_input_args(0),num_output_args(0){}

    int initalize_fpga_hw_accel(const char *filename, const char *kernel_name, int in_args_size[10], int out_args_size[10], int num_in_args, int num_out_args, unsigned int NUMBER_OF_DATA_SETS) {
        int i;
        int err;
        int compute_unit;
        bool SUCESSFUL_EXIT_CODE;
        int status;
        char cl_platform_vendor[1001];
        char cl_platform_name[1001];
        size_t len;
        char buffer[2048];


        unsigned char *kernelbinary;

        num_input_args = num_in_args;
        num_output_args = num_out_args;
        num_data_sets = NUMBER_OF_DATA_SETS;

        for (i = 0 ; i < num_input_args; i++ ) {
            in_args_size_vec[i] = in_args_size[i];
        }

        for (i = 0 ; i < num_output_args; i++ ) {
            out_args_size_vec[i] = out_args_size[i];
        }

        SUCESSFUL_EXIT_CODE = 1;
        err = clGetPlatformIDs(1,&platform_id,NULL);
        if (err != CL_SUCCESS) {
            printf("Error: Failed to find an OpenCL platform!\n");
            printf("Test failed\n");
            return 0;
        } else {
            err = clGetPlatformInfo(platform_id,CL_PLATFORM_VENDOR,1000,(void *)cl_platform_vendor,NULL);
            if (err != CL_SUCCESS) {
                printf("Error: clGetPlatformInfo(CL_PLATFORM_VENDOR) failed!\n");
                printf("Test failed\n");
                return 0;
            } else {
                printf("CL_PLATFORM_VENDOR %s\n",cl_platform_vendor);
                err = clGetPlatformInfo(platform_id,CL_PLATFORM_NAME,1000,(void *)cl_platform_name,NULL);
                if (err != CL_SUCCESS) {
                    printf("Error: clGetPlatformInfo(CL_PLATFORM_NAME) failed!\n");
                    printf("Test failed\n");
                    return 0;
                } else {
                    printf("CL_PLATFORM_NAME %s\n",cl_platform_name);
                    err = clGetDeviceIDs(platform_id, CL_DEVICE_TYPE_ACCELERATOR, 1, &device_id, NULL);
                    if (err != CL_SUCCESS) {
                        printf("Error: Failed to create a device group!\n");
                        printf("Test failed\n");
                        return 0;
                    } else {
                        context = clCreateContext(0, 1, &device_id, NULL, NULL, &err);
                        if (!context) {
                            printf("Error: Failed to create a compute context!\n");
                            printf("Error: code %i\n",err);
                            printf("Test failed\n");
                            return 0;
                        } else {
                            // Load binary from disk
                            printf("loading %s\n", filename);
                            int n_i = load_file_to_memory(filename, (char **) &kernelbinary);
                            if (n_i < 0) {
                                printf("failed to load kernel from xclbin: %s\n", filename);
                                printf("Test failed\n");
                                return 0;
                            } else {
                                size_t n = n_i;
                                // Create the compute program from offline
                                printf("clCreateProgramWithBinary\n");
                                program = clCreateProgramWithBinary(context, 1, &device_id, &n, (const unsigned char **) &kernelbinary, &status, &err);
                                if ((!program) || (err!=CL_SUCCESS)) {
                                    printf("Error: Failed to create compute program from binary %d!\n", err);
                                    printf("Test failed\n");
                                    return 0;
                                } else {
                                    // Build the program executable
                                    printf("clBuildProgram\n");
                                    err = clBuildProgram(program, 0, NULL, NULL, NULL, NULL);
                                    if (err != CL_SUCCESS) {
                                        printf("Error: Failed to build program executable!\n");
                                        clGetProgramBuildInfo(program, device_id, CL_PROGRAM_BUILD_LOG, sizeof(buffer), buffer, &len);
                                        printf("%s\n", buffer);
                                        printf("Test failed\n");
                                        return 0;
                                    } else {
                                        // Create a command commands
                                        commands = clCreateCommandQueue(context, device_id, 0, &err);
                                        if (!commands) {
                                            printf("Error: Failed to create a command commands!\n");
                                            printf("Error: code %i\n",err);
                                            printf("Test failed\n");
                                            return 0;
                                        } else {
                                            // Create the compute kernel in the program we wish to run
                                            for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
                                                kernel[compute_unit] = clCreateKernel(program, kernel_name, &err);
                                                if (!kernel[compute_unit] || err != CL_SUCCESS ) {
                                                    SUCESSFUL_EXIT_CODE = 0;
                                                }
                                            }
                                            if (!SUCESSFUL_EXIT_CODE) {
                                                printf("Error: Failed to create compute kernel!\n");
                                                printf("Test failed\n");
                                                return 0;
                                            } else {
                                                // Create the input and output arrays in device memory for our calculation
                                                for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
                                                    for (i = 0 ; i < num_input_args; i++ ) {
                                                        inputs[compute_unit][i] = clCreateBuffer(context, CL_MEM_READ_ONLY, in_args_size_vec[i], NULL, NULL);
                                                        //printf(" DBG__SRAI (sdaccel_utils_class) : in_args_vec_size[%d] = %d\n", i, in_args_size_vec[i]);
                                                    }
                                                    for (i = 0 ; i < num_output_args; i++ ) {
                                                        outputs[compute_unit][i] =  clCreateBuffer(context, CL_MEM_WRITE_ONLY, out_args_size_vec[i], NULL, NULL);
                                                        //printf(" DBG__SRAI (sdaccel_utils_class) : out_args_vec_size[%d] = %d\n", i, out_args_size_vec[i]);
                                                    }
                                                }
                                                // Set the arguments to our compute kernel
                                                err = CL_SUCCESS;
                                                for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
                                                    for (i = 0 ; i < num_input_args; i++ ) {
                                                            err |= clSetKernelArg(kernel[compute_unit], i, sizeof(cl_mem), &inputs[compute_unit][i]);
                                                    }
                                                    for (i = 0 ; i < num_output_args; i++ ) {
                                                            err |= clSetKernelArg(kernel[compute_unit], (num_input_args+i), sizeof(cl_mem), &outputs[compute_unit][i]);
                                                    }
                                                    err |= clSetKernelArg(kernel[compute_unit], (num_input_args+num_output_args), sizeof(unsigned int), &num_data_sets);
                                                }
                                                if (err != CL_SUCCESS) {
                                                    printf("Error: Failed to set kernel arguments! %d\n", err);
                                                    printf("Test failed\n");
                                                    return 0;
                                                } else {
                                                    return 1;
                                                }  // __SRAI clCreateBuffer and clSetKernelArg for all IO's
                                            } // __SRAI  clCreateKernel
                                        } // __SRAI  clCreateCommandQueue
                                    } // __SRAI clBuildProgram
                                } // __SRAI clCreateProgramWithBinary
                            } // __SRAI load_file_to_memory(filename, (char **) &kernelbinary);
                        } // __SRAI  clCreateContext
                    } // __SRAI  clGetDeviceIDs
                } // __SRAI  clGetPlatformInfo ->  CL_PLATFORM_NAME
            } // __SRAI clGetPlatformInfo
        } // __SRAI clGetPlatformIDs
    }

    int run_fpga_accel (input_data_type *in_args, output_data_type *results_out) {
        int i;
        int err_k[NUM_OF_COMPUTE_UNITS];
        int compute_unit;
        bool SUCESSFUL_EXIT_CODE;
        bool enqueue_error;

        
        SUCESSFUL_EXIT_CODE = 1;
        enqueue_error = 0;

        // Write our data set into the input array in device memory
        enqueue_error = 0;
        for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
            for (i = 0 ; i < num_input_args; i++ ) {
                //printf ("__SRAI DBG (SDACCEL_UTILS) kernel clEnqueueWriteBuffer : %d\n", compute_unit);
                err_k[compute_unit] = clEnqueueWriteBuffer(commands, inputs[compute_unit][i], CL_TRUE, 0, in_args_size_vec[i], in_args, 0, NULL, NULL);
            }
            in_args += LOCAL_DATA_IN_SIZE;
        }


        for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
            if (err_k[compute_unit] != CL_SUCCESS) {
                //printf("Error: Failed to write to source Input array %d \n", compute_unit);
                enqueue_error = 1;
            }
        }

        if (enqueue_error) {
            printf("Error: Failed to write to source Input array \n");
            printf("Test failed\n");
            SUCESSFUL_EXIT_CODE = 0;
        } else {
            // Execute the kernel over the entire range of input data set
            // using the maximum number of work group items for this device
            

            clFinish(commands);

            enqueue_error = 0;
            for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
                err_k[compute_unit] = clEnqueueTask(commands, kernel[compute_unit], 0, NULL, NULL);
                //printf ("__SRAI DBG (SDACCEL_UTILS) kernel enqueueTask : %d\n", compute_unit);
            }
            for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
                if (err_k[compute_unit] != CL_SUCCESS) {
                    enqueue_error = 1;
                }
            }
            if (enqueue_error) {
                printf("Error: Failed to execute kernel(s)! \n");
                printf("Test failed\n");
                SUCESSFUL_EXIT_CODE = 0;
            } else {

                clFinish(commands);
                enqueue_error = 0;
                for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
                    for (i = 0 ; i < num_output_args; i++ ) {
                        //printf ("__SRAI DBG (SDACCEL_UTILS) kernel clEnqueueReadBuffer : %d\n", compute_unit);
                        err_k[compute_unit] = clEnqueueReadBuffer( commands, outputs[compute_unit][i], CL_TRUE, 0, out_args_size_vec[i], results_out, 0, NULL, NULL);
                    }
                results_out += LOCAL_DATA_OUT_SIZE;
                }
                for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
                    if (err_k[compute_unit] != CL_SUCCESS) {
                        enqueue_error = 1;
                    }
                }
                if (enqueue_error) {
                    printf("Error: Failed to read output array! \n");
                    printf("Test failed\n");
                    SUCESSFUL_EXIT_CODE = 0;
                } else {
                    clFinish(commands);
                } // __SRAI clEnqueueReadBuffer (outputs / results array)
            } // __SRAI clEnqueueTask (OR openCL clEnqueueNDRangeKernel)
        } // __SRAI clEnqueueWriteBuffer (enput Array)
     return SUCESSFUL_EXIT_CODE;
    }

    int clean_fpga_hw_accel(void) {
        int compute_unit;
        int i;
        int err;
        bool SUCESSFUL_EXIT_CODE;
        SUCESSFUL_EXIT_CODE = 1;

        for(compute_unit = 0; compute_unit < NUM_OF_COMPUTE_UNITS; compute_unit++) {
            err = CL_SUCCESS;
            for (i = 0 ; i < num_input_args; i++ ) {
                err |= clReleaseMemObject(inputs[compute_unit][i]);
            }
            if (err != CL_SUCCESS) {
                SUCESSFUL_EXIT_CODE = 0;
            }
            err = CL_SUCCESS;
            for (i = 0 ; i < num_output_args; i++ ) {
                err |= clReleaseMemObject(outputs[compute_unit][i]);
            }
            err = clReleaseKernel(kernel[compute_unit]);
            if (err != CL_SUCCESS) {
                SUCESSFUL_EXIT_CODE = 0;
            }
        }

        if (err != CL_SUCCESS) {
            SUCESSFUL_EXIT_CODE = 0;
        }
        err = clReleaseProgram(program);
        if (err != CL_SUCCESS) {
            SUCESSFUL_EXIT_CODE = 0;
        }
        err = clReleaseCommandQueue(commands);
        if (err != CL_SUCCESS) {
            SUCESSFUL_EXIT_CODE = 0;
        }
        err = clReleaseContext(context);
        if (err != CL_SUCCESS) {
            SUCESSFUL_EXIT_CODE = 0;
        }
        
        if (!SUCESSFUL_EXIT_CODE) {
            return 0;
        } else { 
            return 1;
        }
    }



};

#endif //SDACCEL_UTILITIES_H_
