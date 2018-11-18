cmake_minimum_required(VERSION 2.8)
project(zoo)

message("Recomendation about naming conventions.\nCACHE variables (and perhaps options) are global, that means thy are stored in CMakeCache file, so there is risk of possible clash. Workaround instead of absent namespace is prefixing that names with project name\n")

add_subdirectory(foo)
add_subdirectory(boo)
