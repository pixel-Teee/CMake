set(BUILDINFO_TEMPLATE_DIR ${CMAKE_CURRENT_LIST_DIR})
set(DESTINATION "${CMAKE_CURRENT_BINRARY_DIR}/buildinfo") # generate in this directory

string(TIMESTAMP TIMESTAMP) # unquoted parameter

find_program(GIT_PATH git REQUIRED) # find git

execute_process(COMMAND
                ${GIT_PATH} log --pretty=format:'%h' -n 1
                OUTPUT_VARIABLE COMMIT_SHA)

configure_file(
    "${BUILDINFO_TEMPLATE_DIR}/buildinfo.h.in"
    "${DESTINATION}/buildinfo.h" @ONLY
)

# contains build info header
function(BuildInfo target)
    target_include_directories(${target} PRIVATE
    ${DESTINATION})
endfunction()
