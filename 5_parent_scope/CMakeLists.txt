cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(aa "")

function(scope_2)
	message("Scope 2 (before): '${aa}'")
	set(aa "777" PARENT_SCOPE)
	message("Scope 2 (after): '${aa}'")
endfunction()

function(scope_1)
	message("Scope 1 (before): '${aa}'")
	scope_2()
	message("Scope 1 (after): '${aa}'")
endfunction()

message("Top level (before): '${aa}'")
scope_1()
message("Top level (after): '${aa}'")
