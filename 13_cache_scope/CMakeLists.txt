cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(abc "888" CACHE STRING "")

message("Before add_subdirectory we can see Un as '${Un}' - once cached is what that subdirectory says")

add_subdirectory(boo)

message("Subdirectory boo CMakeLists.txt contains variable Un = '${Un}'")

set(Deux "2222" CACHE STRING "")

message("Current variable Deux values is '${Deux}' - remains unchainged once cached (unless you remove CMakeCache.txt of course)")

message("Also local abc (cached) is '${abc}' (-Dabc=what_you_say has higher priority than set with it's CACHEs)")

message("\nWhat is set to cachable variables with -Dvariable_name=value remains in cache even in latter -D'less -cmake calls")

set(def "7654321")

message("Simple def variable - not cached: '${def}' - not getting affected by -D at all\n")
