cmake_minimum_required(VERSION 2.8)
project(bar)

set(a "uno")
set(b "${a}_un")
set(${a}_1 "dos")
set(variable_${a} "${a} + ${b} + 155")

message("a = '${a}'	b = '${b}'	uno_1 = '${uno_1}'	variable_uno = '${variable_uno}'")

foreach(lang C CXX)
	message("Compiler for language ${lang}: ${CMAKE_${lang}_COMPILER}")
	foreach(b_type DEBUG RELEASE RELWITHDEBINFO MINSIZEREL)
		message("	Flags for language ${lang} + build type ${b_type}: ${CMAKE_${lang}_FLAGS_${b_type}}")
	endforeach()
endforeach()
