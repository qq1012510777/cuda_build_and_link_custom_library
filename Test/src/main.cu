#include "Function.cuh"

int main()
{
    Function<<<1, 3>>>();
    cudaDeviceSynchronize();
    return 0;
};
