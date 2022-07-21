NVCC=nvcc
CUDAFLAGS= -std=c++17 -c -arch=sm_60 -rdc=true
INCDIRS=~/cuda_custom_lib_test/include
all: 
	$(NVCC) ./src/main.cu ../lib/libcuda_custom_lib_test.a -o ./bin/main -I $(INCDIRS) $(CXXFLAGS)
clean:
