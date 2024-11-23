cmake_minimum_required(VERSION 3.14)

project(Open_gl LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_PREFIX_PATH "/Users/MY_USER_NAME/Qt/6.1.2/macos/lib/cmake")

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core REQUIRED)

add_executable(Open_gl
  main.cpp
  renderer.h
  renderer.cpp
  vertexarray.h
  vertexarray.cpp
  object.h
  object.cpp
  texture.h
  texture.cpp
  vertexbuffer.h
  vertexbuffer.cpp
  shader.h
  shader.cpp
  uvbuffer.h
  uvbuffer.cpp
  controls.h
  controls.cpp
  navigationcontrols.h
  navigationcontrols.cpp
  camera.h
  camera.cpp
  fpscontrols.h
  fpscontrols.cpp
  velo.h
  velo.cpp
  pointlight.h
  pointlight.cpp
)
target_link_libraries(Open_gl Qt${QT_VERSION_MAJOR}::Core glfw GLEW libGLEW.so libstb.so libGLU.so libGL.so)