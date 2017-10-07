cmake_minimum_required(VERSION 3.6)
project(asm3_trampoline)

set(CMAKE_CXX_STANDARD 14)

set(SOURCE_FILES trampoline.cpp)
add_executable(asm3_trampoline ${SOURCE_FILES})