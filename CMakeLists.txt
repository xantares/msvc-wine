cmake_minimum_required (VERSION 2.8)
project (HelloWorld)

add_executable (hello main.cpp)

install (TARGETS hello DESTINATION bin)
