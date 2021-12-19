#include <stdio.h>
#include "gorn.h"

int main() {
    int x = 3;
    int size = 6;
    int arr[6] = {3, 2, 6, 1, 4, 15};
    printf("%d\n", gorn(arr, x, size));
    return 0;
}
