cmake_minimum_required(VERSION 3.0)
project(foo)

add_executable(foo foo/foo.h foo/foo.cpp foo/main.cpp)

message("Processing CMakeLists.txt")