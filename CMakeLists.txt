cmake_minimum_required(VERSION 3.0)
project(boo)

message("From top level:")
message(" Source (general): ${PROJECT_SOURCE_DIR}")
message(" Source (boo): ${boo_SOURCE_DIR}")

#------add_subdirectory and function have their own scope------
add_subdirectory(Source)
#------add_subdirectory and function have their own scope------

#------when a new scope is created, it will be initialized with the variables of the parent scope------
function(foo)
	message("[foo]: Scope for function 'foo' copied from parent 'boo': { abc = '${abc}', xyz = '${xyz}'}")
	unset(abc)#remove variable abc from current scope
	message("[foo]: Command 'unset(abc)' will remove variable from current scope: { abc = '${abc}', xyz = '${xyz}'}")
endfunction()

function(boo)
	message("[boo]: Scope for function 'boo' copied from parent 'boo': { abc = '${abc}', xyz = '${xyz}'}")
	set(abc "789")
	message("[boo]: Command 'set(abc ...)' modify current scope, state: { abc = '${abc}', xyz = '${xyz}'}")
	foo()
endfunction()

set(abc "123")
set(xyz "456")

message("Top level scope state: { abc = '${abc}', xyz = '${xyz}' }")

boo()

message("Top level scope state: { abc = '${abc}', xyz = '${xyz}' }")
#------when a new scope is created, it will be initialized with the variables of the parent scope------

#------quote could contains space------
set(abc "456")
set("abc" "123")
set("ab c" "456")

function(print_name varname)
	message("Variable name: '${varname}', value: '${${varname}}'")
endfunction()

print_name(abc)
print_name("abc")
print_name("ab c")
#------quote could contains space------

#------quotes------
set(a "Quoted argument")
set(b x-"Unquoted argument")
set(c x"a;b;c")

message("a = '${a}'")
message("b = '${b}'")

message("c =")
foreach(x ${c})
	message(" '${x}'")
endforeach()
#------quotes------

foreach(item 1;2;3)
	message(${item})
endforeach()

