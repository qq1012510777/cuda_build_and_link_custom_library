#pragma once
#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <cuda.h>
#include <cuda_runtime.h>
#include <curand.h>
#include <curand_kernel.h>
#include <device_launch_parameters.h>
#include <fstream>
#include <iostream>
#include <map>
#include <random>
#include <sstream>
#include <stdlib.h>
#include <sys/time.h>
#include <thrust/device_vector.h>
#include <thrust/host_vector.h>
#include <vector>

using namespace std;

__global__ void Function();
