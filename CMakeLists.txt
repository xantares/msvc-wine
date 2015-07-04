cmake_minimum_required (VERSION 2.8)

if (NOT DEFINED CMAKE_BUILD_TYPE)
  set (CMAKE_BUILD_TYPE Release CACHE STRING "Build type")
endif ()

project (HelloWorld)

add_executable (hello main.cpp)

install (TARGETS hello DESTINATION bin)
