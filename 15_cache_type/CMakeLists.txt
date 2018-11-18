cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(FOO_A "YES" CACHE BOOL "Variable A")
set(FOO_B "boo/info.txt" CACHE FILEPATH "Variable B")
set(FOO_C "boo/" CACHE PATH "Variable C")
set(FOO_D "abc" CACHE STRING "Variable D")

message("FOO_A (bool): ${FOO_A}")
message("FOO_B (file path): ${FOO_B}")
message("FOO_C (dir path): ${FOO_C}")
message("FOO_D (srting): ${FOO_D}")