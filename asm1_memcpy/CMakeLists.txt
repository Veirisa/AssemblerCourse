cmake_minimum_required(VERSION 3.6)
project(asm1_memcpy)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES memcpy.cpp)
add_executable(asm1_memcpy ${SOURCE_FILES})