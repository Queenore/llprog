# 1 "C:\\Users\\chesh\\CLionProjects\\lab4\\gorn.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Users\\chesh\\CLionProjects\\lab4\\gorn.c"
# 1 "C:\\Users\\chesh\\CLionProjects\\lab4\\gorn.h" 1



int gorn(const int arr[], int x, int size);
# 2 "C:\\Users\\chesh\\CLionProjects\\lab4\\gorn.c" 2

int gorn(const int arr[], int x, int size){
    int result = 0;
    for(int i = 0; i < size; i++){
        result = result * x + arr[i];
    }
    return result;
}
