cmake_minimum_required(VERSION 3.20.0)
#[==[
    set(a "123")
    message(${a})
#]==]

message([[multiline
    bracket
    argument
]])

message([==[
    because we used two equal-signs "=="
    follwing is still a signle argument:
    { "petsArray" = [["mouse", "cat"], ["dog"]]}
]==])

message("1. escape sequence: \" \n in a quoted argument")
message("2. multi...
    line")
message("3. and a variable reference: ${CMAKE_VERSION}")

message(a\ signgle\ argument)
message(two arguments)
message(three;separated;arguments)
message(${CMAKE_VERSION}) # a variable reference
message(()()()) # matching parentheses

set(MyString1 "Text1")
set([[My String2]] "Text2")
set("My String 3" "Text3")
message(${MyString1})
message(${My\ String2})
message(${My\ String\ 3})