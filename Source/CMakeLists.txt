cmake_minimum_required(VERSION 3.0)
project(foo)

message("From subdirectory 'boo':")
message(" Source (general): ${PROJECT_SOURCE_DIR}")
message(" Source (foo): ${foo_SOURCE_DIR}")
message(" Source (boo): ${boo_SOURCE_DIR}")

#------test regular variable and cache variable------
message("Regular variable (before): ${abc}")
message("Cache variable (before): ${xyz}")

set(abc "123")
set(xyz "321" CACHE STRING "")

message("Regular variable (after): ${abc}")
message("Cache variable (after): ${xyz}")
#------test regular variable and cache variable------

add_executable(foo foo/foo.h foo/foo.cpp foo/main.cpp)

# message("Processing CMakeLists.txt")

message("Using CMake version ${CMAKE_VERSION}")