cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(abc "123456")

message("Top level scope (before): ${abc}")

add_subdirectory(boo)

message("Top level scope (after): ${abc}")
