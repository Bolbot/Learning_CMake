cmake_minimum_required(VERSION 2.8)
project(foo NONE)

message("CMakeLists.txt introduces no variables. It is done with .cmake file supplied with -C key.")
message("Here are the values: Project ${Project}\tA = '${A}'\tB = '${B}'\tC = '${C}'")
