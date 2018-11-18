cmake_minimum_required(VERSION 2.8)
project(foo NONE)

message("\tUn is CACHE STRING, Deux is option")

set(Un "111" CACHE STRING "Un variable some value")
set(Un "44")
message("[0] Un = ${Un}")

unset(Un)
message("[1] Un = ${Un}")

unset(Un CACHE)
message("[2] Un = ${Un}")

option(Deux "Deux option" ON)
set(Deux OFF)
message("[0] Deux = ${Deux}")

unset(Deux)
message("[1] Deux = ${Deux}")

unset(Deux CACHE)
message("[2] Deux = ${Deux}")
