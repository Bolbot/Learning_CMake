cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(FOO_CRYPTO "OpenSSL" CACHE STRING "Backend for cryptography")

set_property(CACHE FOO_CRYPTO PROPERTY STRINGS "OpenSSL;Libgcrypt;WinCNG")

set(RockBand "ACDC" CACHE STRING "That is just a drop-down menu for CMake-gui")

set_property(CACHE RockBand PROPERTY STRINGS "ACDC;Black Sabbath;Clash;Death;Exodus;Fanisk")

set(FOO_A "123" CACHE STRING "")
set(FOO_B "456" CACHE INTERNAL "")
set(FOO_C "789" CACHE STRING "")
set(FOO_D "010101" CACHE INTERNAL "")

message("What is simply CACHE STRING is visible to cmake-gui: ${FOO_A} and ${FOO_C}")
message("What is CACHE INTERNAL is invisible to cmake-gui: ${FOO_B} and ${FOO_D}")

set(FOO_A "321" CACHE STRING "")
set(FOO_A "1" CACHE STRING "")
message("After resetting FOO_A (string) twice to '123' and '1' it is ${FOO_A}")

set(FOO_B "654" CACHE INTERNAL "")
set(FOO_B "9" CACHE INTERNAL "")
message("After resetting FOO_B (internal) twice to '654' and '9' it is ${FOO_B}")

mark_as_advanced(FOO_C)
message("FOO_C has type STRING and is marked as advanced - gui show it with advanced tick only")