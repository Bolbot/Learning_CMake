cmake_minimum_required(VERSION 2.8)
project(foo NONE)

option(Deja "Option Deja" OFF)
option(Encore "Option Encore" ON)

set(Toujours "Variable Toujours")
set(Parfois "Variable Parfois (CACHE)" CACHE STRING "")

message("Deja est '${Deja}' et Encore est '${Encore}'")
message("Not to confuse with variables like comme Toujours '${Toujours}' et Parfois '${Parfois}'")
message("\tVariables hold string values (STRING by default) and set via set()")
message("\tOptions hold boolean values and set via option()")
message("\tVariables do not creates cache entries unless they explicitly specified as CACHE")
message("\tOptions do create cache entries\n")
