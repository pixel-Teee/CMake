add_executable(calc_test calc_test.cpp)
target_link_libraries(calc_test PRIVATE calc_static)
# ... calc_test target definition
# AddTests(calc_test)
# EnableCoverage(calc_obj)