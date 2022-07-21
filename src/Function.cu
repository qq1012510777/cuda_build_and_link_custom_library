#include "Function.cuh"

__global__ void Function()
{
    int i = threadIdx.x + blockIdx.x * blockDim.x;

    if (i > 2)
        return;
    printf("Function %d\n", i);
};
