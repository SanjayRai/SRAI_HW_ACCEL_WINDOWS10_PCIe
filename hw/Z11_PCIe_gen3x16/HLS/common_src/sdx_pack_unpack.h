#ifndef SDX_PACK_UNPACK_H_
#define SDX_PACK_UNPACK_H_
//
#include "sdx_cppKernel_top.h" 




template <class conv_t> class sdx_pack_unpack {


    private:
        conv_t pack_conv;
        conv_t unpack_conv;

    public:
    uint32_t pack_sdx_512_dataX(sdx_data_t *a, data_t *my_t, uint32_t strip_size) {
    #pragma HLS INLINE
        int count;
        uint32_t ptr_inc = 0;
        count = strip_size;
        //std::cout << "DBG__SRAI count = " <<count << std::endl;
        while (count > 0) {
            for (unsigned int index = 0; index < NUM_ELEMENTS_PER_SDX_DATA_BEAT; index++) {
                if ( count > 0) {
                    pack_conv.my_data_t = *my_t;
                    my_t++;
                    ((*a)(((index*32)+31), (index*32))) =  pack_conv.my_uint32;
                    count--;
                } else {
                    //((*a)(((index*32)+31), (index*32))) = (uint32_t)55; 
                    count--;
		}
           }
           a++;
           ptr_inc++;
       }
        return ptr_inc;
    }

    uint32_t pack_sdx_512_dataX2(sdx_data_t *a, data_t *my_t, uint32_t strip_size) {
    #pragma HLS INLINE
        int count;
        uint32_t ptr_inc = 0;
        count = strip_size;
        //std::cout << "DBG__SRAI count = " <<count << std::endl;
        while (count > 0) {
            for (unsigned int index = 0; index < NUM_ELEMENTS_PER_SDX_DATA_BEAT; index++) {
                if ( count > 0) {
                    pack_conv.my_data_t = *my_t;
                    my_t++;
                    ((*a)(((index*64)+63), (index*64))) =  pack_conv.my_uint32;
                    count--;
                } else {
                    count--;
		}
           }
           a++;
           ptr_inc++;
       }
        return ptr_inc;
    }

    void pack_sdx_512_data(sdx_data_t *a, data_t my_t[NUM_ELEMENTS_PER_SDX_DATA_BEAT]) {
    #pragma HLS INLINE
        for (unsigned int index = 0; index < NUM_ELEMENTS_PER_SDX_DATA_BEAT; index++) {
                pack_conv.my_data_t = my_t[index];
                ((*a)(((index*32)+31), (index*32))) =  pack_conv.my_uint32;
            }
    }

    void unpack_sdx_512_data(sdx_data_t *a, data_t my_t[NUM_ELEMENTS_PER_SDX_DATA_BEAT]) {
    #pragma HLS INLINE
        for (unsigned int index = 0; index < NUM_ELEMENTS_PER_SDX_DATA_BEAT; index++) {
            unpack_conv.my_uint32 = ((*a)(((index*32)+31), (index*32)));
            my_t[index] = unpack_conv.my_data_t;
        }

    }

    uint32_t unpack_sdx_512_dataX(sdx_data_t *a, data_t *my_t, uint32_t strip_size) {
    #pragma HLS INLINE
        int count;
        uint32_t ptr_inc = 0;
        count = strip_size;
        while (count > 0) {
            for (unsigned int index = 0; index < NUM_ELEMENTS_PER_SDX_DATA_BEAT; index++) {
                if ( count > 0) {
                    unpack_conv.my_uint32 = ((*a)(((index*32)+31), (index*32)));
                    *my_t = unpack_conv.my_data_t;
                    my_t++;
                    count--;
                } else {
                    //*my_t = (data_t)0;
                    count--;
		}
            }
           a++;
           ptr_inc++;
        }
        return ptr_inc;

    }

    uint32_t unpack_sdx_512_dataX2(sdx_data_t *a, data_t *my_t, uint32_t strip_size) {
    #pragma HLS INLINE
        int count;
        uint32_t ptr_inc = 0;
        count = strip_size;
        while (count > 0) {
            for (unsigned int index = 0; index < NUM_ELEMENTS_PER_SDX_DATA_BEAT; index++) {
                if ( count > 0) {
                    unpack_conv.my_uint32 = ((*a)(((index*64)+64), (index*64)));
                    *my_t = unpack_conv.my_data_t;
                    my_t++;
                    count--;
                } else {
                    //*my_t = (data_t)0;
                    count--;
		}
            }
           a++;
           ptr_inc++;
        }
        return ptr_inc;

    }

};
#endif // SDX_PACK_UNPACK_H_
