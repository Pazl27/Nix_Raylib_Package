cmake_minimum_required(VERSION 3.11)
project(MyRaylib)

find_package(raylib 3.0 REQUIRED)

file(GLOB_RECURSE SOURCES
  src/*.cpp
)

add_executable(main ${SOURCES})

target_link_libraries(main PRIVATE raylib)
