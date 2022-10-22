include(GetFTXUI) # contains GetFTXUI.cmake

add_library(calc_console_static STATIC tui.cpp)

target_include_directories(calc_console_static PUBLIC
include)

target_precompile_headers(calc_console_static PUBLIC
<string>) # pch

target_link_libraries(calc_console_static PUBLIC
calc_shared # contains calc_shared
    ftxui::screen ftxui::dom ftxui::component)

include(BuildInfo)

# contains build info header
BuildInfo(calc_console_static) # this is CalcConsoleApp's static library

# ... testing and program analysis modules
# ... documentation generation
# include(Coverage)
# CleanCoverage(calc_console_static)
include(Format)
Format(calc_console_static .)
# include(CppCheck)
# AddCppCheck(calc_console_static)
# include(Doxygen)
# Doxygen(calc_console src/calc_console)

add_executable(calc_console bootstrap.cpp) # bootstrap executable
target_compile_definitions(calc_console PRIVATE -DIMPORT_DLL)
target_link_libraries(calc_console calc_console_static) # contains calc_console_static include directories
