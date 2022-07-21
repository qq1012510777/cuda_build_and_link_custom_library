cmake_minimum_required (VERSION 3.7)

project (generate_lib)

enable_language(CUDA)

set (SCRIPT_ROOT $ENV{HOME}/cuda_custom_lib_test)

include_directories(${SCRIPT_ROOT}/include)

file(GLOB_RECURSE SRC_CU_PATH ${SCRIPT_ROOT}/src/*.cu)

SET (CMAKE_VERBOSE_MAKEFILE TRUE)
SET (CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} -arch=sm_60 -std=c++17 -rdc=true")

add_library (CUDA_CUSTOM_LIB_TEST_shared SHARED ${SRC_CU_PATH})
add_library(CUDA_CUSTOM_LIB_TEST_static STATIC ${SRC_CU_PATH})

set_target_properties(CUDA_CUSTOM_LIB_TEST_shared PROPERTIES OUTPUT_NAME "cuda_custom_lib_test")
set_target_properties(CUDA_CUSTOM_LIB_TEST_static PROPERTIES OUTPUT_NAME "cuda_custom_lib_test")

set (LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR})

TARGET_LINK_LIBRARIES( CUDA_CUSTOM_LIB_TEST_shared ${CUDA_LIBRARIES})

TARGET_LINK_LIBRARIES( CUDA_CUSTOM_LIB_TEST_static ${CUDA_LIBRARIES})

set_target_properties(CUDA_CUSTOM_LIB_TEST_shared
                      PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

set_target_properties(CUDA_CUSTOM_LIB_TEST_static
                      PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

