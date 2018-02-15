#ifndef MATRIX_DETERMINANT_CLASS_H_
#define MATRIX_DETERMINANT_CLASS_H_

#include <iostream>
#include "ap_fixed.h"

template <class Ti, int DIM>
class matrix_determinant_class { 

public :
    matrix_determinant_class(void){};

    Ti crout_decomposition(Ti A[DIM][DIM]) {
            int i, j, k;
            Ti sum = 0;
            Ti det = 1;
            Ti L[DIM][DIM];
            Ti U[DIM][DIM];

            for (i = 0; i < DIM; i++) {
                    U[i][i] = 1;
            }

            for (j = 0; j < DIM; j++) {
                    for (i = j; i < DIM; i++) {
                            sum = 0;
                            for (k = 0; k < j; k++) {
                                    sum = sum + L[i][k] * U[k][j];	
                            }
                            L[i][j] = A[i][j] - sum;
                    }

                    for (i = j; i < DIM; i++) {
                            sum = 0;
                            for(k = 0; k < j; k++) {
                                    sum = sum + L[j][k] * U[k][i];
                            }
                            if (L[j][j] == 0) {
                                   std::cout << "Denominator is 0 !!\n"; 
                            }
                            U[j][i] = (A[j][i] - sum) / L[j][j];
                    }
            }
            for (i=0 ; i < DIM; i++) {
                det *= L[i][i];
            }
            if (det == 0) {
                std::cout << "Determinant is 0 !!\n"; 
            }
            return det;
    }

};

#endif //MATRIX_DETERMINANT_CLASS_H_
