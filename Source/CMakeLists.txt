cmake_minimum_required(VERSION 3.20.0)
project(foo)

message("generated with " $ENV{myenv})

add_executable(foo foo/foo.h foo/foo.cpp foo/main.cpp)

add_custom_target(EchoEnv ALL COMMAND echo "myenv in build is" $ENV{myenv})