cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(un "111")
set(deux "222")

message("un (before): ${un}")
include("./modify-un.cmake")
message("un (after): ${un}")

macro(modify_deux)
	set(deux "zwei")
endmacro()

message("deux (before): ${deux}")
modify_deux()
message("deux (after): ${deux}")
