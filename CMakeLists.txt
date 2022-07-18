cmake_minimum_required(VERSION 3.0)
project(boo)

message("From top level:")
message(" Source (general): ${PROJECT_SOURCE_DIR}")
message(" Source (boo): ${boo_SOURCE_DIR}")

add_subdirectory(Source)