cmake_minimum_required(VERSION 2.8)
project(foo)

set(condition_a "TRUE")
set(condition_b "NO")
set(path_to_this "${CMAKE_CURRENT_SOURCE_DIR}/CMakeLists.txt")

set(target_name foo)
add_library("${target_name}" foo.cpp)

if(condition_a)
	message("condition_a which is ${condition_a}")
else()
	message("NOT condition_a which is ${condition_a}")
endif()

if(condition_b)
	message("condition_b which is ${condition_b}")
else()
	message("NOT condition_b which is ${condition_b}")
endif()

if(EXISTS "${path_to_this}")
	message("File exists: ${path_to_this}")
else()
	message("File does not exist: ${path_to_this}")
endif()

if(TARGET "${target_name}")
	message("Target exist: ${target_name}")
else()
	message("Target does not exist: ${target_name}")
endif()
