set(A "Pizza" CACHE STRING "" FORCE)
set(B "Garbage" CACHE STRING "")
set(C "Sonic-Spider" CACHE STRING "")
set(Project Manhattan CACHE STRING "")

message("We can make message from this .cmake files introduced for cache initializing")
message("So pardon manhattan.cmake for bad CMake design but it forces A variable to be ${A}")
