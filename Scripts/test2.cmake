cmake_minimum_required(VERSION 3.20.0)

set(VAR1 TRUE)
set(VAR2 VAR1)

if(${VAR2})
    message("try to call unquoted parameter")
endif()

# set(FOO "FALSE")
# set(FOO BAR)
set(FOO "FALSE")
if(FOO)
    message("try to call unquoted parameter")
endif()