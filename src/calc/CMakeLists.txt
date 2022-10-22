add_library(calc_obj OBJECT calc.cpp) # build as object

target_include_directories(calc_obj INTERFACE
"$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>" # use different generator expression in the different stage
"$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>" # build stage and install stage
)

set_target_properties(calc_obj PROPERTIES
    PUBLIC_HEADER src/calc/include/calc/calc.h
    POSITION_INDEPENDENT_CODE 1 # use for shared library
)

add_library(calc_shared SHARED calc.cpp)
# target_link_libraries(calc_shared calc_obj)
 target_include_directories(calc_shared INTERFACE
 "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>" # use different generator expression in the different stage
 "$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>" # build stage and install stage
)
add_library(calc_static STATIC)
target_link_libraries(calc_static calc_obj)

target_compile_definitions(calc_shared PUBLIC -DEXPORT_DLL)

# ... testing and program analysis modules
# ... documentation generation
# include(Coverage)
# CleanCoverage(calc_static)
include(Format)
Format(calc_static .)
# include(CppCheck)
# AddCppCheck(calc_obj)
# ... documentation generation


