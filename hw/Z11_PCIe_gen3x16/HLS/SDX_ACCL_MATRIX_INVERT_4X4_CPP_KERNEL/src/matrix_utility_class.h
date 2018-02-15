#ifndef MATRIX_UTILITY_CLASS_H_
#define MATRIX_UTILITY_CLASS_H_
#include "matrix_determinant_class.h"

#include "ap_fixed.h"

template <class Ti, int DIM>
class matrix_utility_class { 

public :
    matrix_utility_class(void){};

    void cofactor(Ti A[DIM][DIM], Ti co_fac[DIM][DIM]) {
        Ti b[DIM-1][DIM-1];
        int m,n;
        bool sign_row;
        bool sign_col;
        Ti matrix_det;
        matrix_determinant_class<Ti, DIM-1>  matrix_cofac;

        sign_col = 0;
        for (int q=0;q<DIM;q++) {
            sign_row = sign_col;
            for (int p=0;p<DIM;p++) {
                m=0;
                for (int i=0;i<DIM;i++) {
                    n=0;
                    if (i !=q) {
                        for (int j=0;j<DIM;j++) {
                            if (j != p) {
                                b[m][n] = A[i][j];
                                n++;
                            }
                        }
                        m++;
                    }
                }
                matrix_det = matrix_cofac.crout_decomposition(b);
                if (sign_row)
                    co_fac[q][p]= ((-1)* matrix_det);
                else
                    co_fac[q][p]= (matrix_det);

                sign_row = not sign_row;

            }
            sign_col = not sign_col;
        }
    }



    void transpose(Ti A[DIM][DIM],Ti Y[DIM][DIM]) {

      for (int i=0;i<DIM;i++)
        {
         for (int j=0;j<DIM;j++)
           {
             Y[i][j]=A[j][i];
            }
        }
    }


};

#endif //MATRIX_UTILITY_CLASS_H_


