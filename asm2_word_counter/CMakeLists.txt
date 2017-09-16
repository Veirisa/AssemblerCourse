cmake_minimum_required(VERSION 3.6)
project(asm2_word_counter)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES word_counter.cpp)
add_executable(asm2_word_counter ${SOURCE_FILES})