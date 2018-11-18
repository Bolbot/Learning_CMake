cmake_minimum_required(VERSION 2.8)
project(foo NONE)

message("Regular variable (before): ${abc}")
message("Cache variable (before): ${xyz}")

set(abc "666")
set(xyz "777" CACHE STRING "")

message("Regular variable (after): ${abc}")
message("Cache variable (after): ${xyz}")
