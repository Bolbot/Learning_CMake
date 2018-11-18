cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(Un "Default value for Un is Bonjour! (CACHE)" CACHE STRING "")
set(Deux "Default value for Deux is Voule vous un cafe? (plain)")

message("Un et '${Un}'")
message("Deux et '${Deux}'")
