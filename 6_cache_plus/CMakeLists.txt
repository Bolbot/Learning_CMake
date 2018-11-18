cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(einz "777" CACHE STRING "")
set(einz "123")

set(zwei "999")
set(zwei "000" CACHE STRING "")

message("Regular variable from current scope: einz = ${einz}    zwei = ${zwei}")

unset(einz)
unset(zwei)

message("Cache variable if regular not found: einz = ${einz}    zwei = ${zwei}")
