cmake_minimum_required(VERSION 3.0)
project(foo)

message("From subdirectory 'boo':")
message(" Source (general): ${PROJECT_SOURCE_DIR}")
message(" Source (foo): ${foo_SOURCE_DIR}")
message(" Source (boo): ${boo_SOURCE_DIR}")

add_executable(foo foo/foo.h foo/foo.cpp foo/main.cpp)

# message("Processing CMakeLists.txt")

message("Using CMake version ${CMAKE_VERSION}")