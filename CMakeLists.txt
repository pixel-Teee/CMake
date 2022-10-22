cmake_minimum_required(VERSION 3.20.0)

project(Calc VERSION 1.0.0 LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake") # similar to format

include(NoInSourceBuilds) # contains NoInSourceBuilds

add_subdirectory(src bin) # named bin in the build tree

add_subdirectory(test) # contains test

include(Install)