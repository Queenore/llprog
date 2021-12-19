#include "gorn.h"

int gorn(const int arr[], int x, int size){
    int result = 0;
    for(int i = 0; i < size; i++){
        result = result * x + arr[i];
    }
    return result;
}
