cmake_minimum_required(VERSION 3.20.0)
project(foo)

# message("generated with " $ENV{myenv})

# add_executable(foo foo/foo.h foo/foo.cpp foo/main.cpp)

# add_custom_target(EchoEnv ALL COMMAND echo "myenv in build is" $ENV{myenv})

add_library(foo2 foo/foo.cpp)
set_property(TARGET foo2 PROPERTY INTERFACE_LIB_VERSION 4)# set version
set_property(TARGET foo2 APPEND PROPERTY COMPATIBLE_INTERFACE_STRING LIB_VERSION)

add_library(foo3 foo/foo.cpp)
set_property(TARGET foo3 PROPERTY INTERFACE_LIB_VERSION 4)#set version
add_library(destination foo/foo.cpp)
target_link_libraries(destination foo2 foo3)


