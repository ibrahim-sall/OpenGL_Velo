# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ibhou/Documents/OpenGL/OpenGL_API_V6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build

# Include any dependencies generated for this target.
include CMakeFiles/Open_gl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Open_gl.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Open_gl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Open_gl.dir/flags.make

Open_gl_autogen/timestamp: /usr/lib/qt6/libexec/moc
Open_gl_autogen/timestamp: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target Open_gl"
	/usr/bin/cmake -E cmake_autogen /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles/Open_gl_autogen.dir/AutogenInfo.json Debug
	/usr/bin/cmake -E touch /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/Open_gl_autogen/timestamp

CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.o: Open_gl_autogen/mocs_compilation.cpp
CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.o -MF CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/Open_gl_autogen/mocs_compilation.cpp

CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/Open_gl_autogen/mocs_compilation.cpp > CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.i

CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/Open_gl_autogen/mocs_compilation.cpp -o CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.s

CMakeFiles/Open_gl.dir/main.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/main.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/main.cpp
CMakeFiles/Open_gl.dir/main.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Open_gl.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/main.cpp.o -MF CMakeFiles/Open_gl.dir/main.cpp.o.d -o CMakeFiles/Open_gl.dir/main.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/main.cpp

CMakeFiles/Open_gl.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/main.cpp > CMakeFiles/Open_gl.dir/main.cpp.i

CMakeFiles/Open_gl.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/main.cpp -o CMakeFiles/Open_gl.dir/main.cpp.s

CMakeFiles/Open_gl.dir/renderer.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/renderer.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/renderer.cpp
CMakeFiles/Open_gl.dir/renderer.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Open_gl.dir/renderer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/renderer.cpp.o -MF CMakeFiles/Open_gl.dir/renderer.cpp.o.d -o CMakeFiles/Open_gl.dir/renderer.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/renderer.cpp

CMakeFiles/Open_gl.dir/renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/renderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/renderer.cpp > CMakeFiles/Open_gl.dir/renderer.cpp.i

CMakeFiles/Open_gl.dir/renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/renderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/renderer.cpp -o CMakeFiles/Open_gl.dir/renderer.cpp.s

CMakeFiles/Open_gl.dir/vertexarray.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/vertexarray.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/vertexarray.cpp
CMakeFiles/Open_gl.dir/vertexarray.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Open_gl.dir/vertexarray.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/vertexarray.cpp.o -MF CMakeFiles/Open_gl.dir/vertexarray.cpp.o.d -o CMakeFiles/Open_gl.dir/vertexarray.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/vertexarray.cpp

CMakeFiles/Open_gl.dir/vertexarray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/vertexarray.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/vertexarray.cpp > CMakeFiles/Open_gl.dir/vertexarray.cpp.i

CMakeFiles/Open_gl.dir/vertexarray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/vertexarray.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/vertexarray.cpp -o CMakeFiles/Open_gl.dir/vertexarray.cpp.s

CMakeFiles/Open_gl.dir/object.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/object.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/object.cpp
CMakeFiles/Open_gl.dir/object.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Open_gl.dir/object.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/object.cpp.o -MF CMakeFiles/Open_gl.dir/object.cpp.o.d -o CMakeFiles/Open_gl.dir/object.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/object.cpp

CMakeFiles/Open_gl.dir/object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/object.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/object.cpp > CMakeFiles/Open_gl.dir/object.cpp.i

CMakeFiles/Open_gl.dir/object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/object.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/object.cpp -o CMakeFiles/Open_gl.dir/object.cpp.s

CMakeFiles/Open_gl.dir/texture.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/texture.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/texture.cpp
CMakeFiles/Open_gl.dir/texture.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Open_gl.dir/texture.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/texture.cpp.o -MF CMakeFiles/Open_gl.dir/texture.cpp.o.d -o CMakeFiles/Open_gl.dir/texture.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/texture.cpp

CMakeFiles/Open_gl.dir/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/texture.cpp > CMakeFiles/Open_gl.dir/texture.cpp.i

CMakeFiles/Open_gl.dir/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/texture.cpp -o CMakeFiles/Open_gl.dir/texture.cpp.s

CMakeFiles/Open_gl.dir/vertexbuffer.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/vertexbuffer.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/vertexbuffer.cpp
CMakeFiles/Open_gl.dir/vertexbuffer.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Open_gl.dir/vertexbuffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/vertexbuffer.cpp.o -MF CMakeFiles/Open_gl.dir/vertexbuffer.cpp.o.d -o CMakeFiles/Open_gl.dir/vertexbuffer.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/vertexbuffer.cpp

CMakeFiles/Open_gl.dir/vertexbuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/vertexbuffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/vertexbuffer.cpp > CMakeFiles/Open_gl.dir/vertexbuffer.cpp.i

CMakeFiles/Open_gl.dir/vertexbuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/vertexbuffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/vertexbuffer.cpp -o CMakeFiles/Open_gl.dir/vertexbuffer.cpp.s

CMakeFiles/Open_gl.dir/shader.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/shader.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/shader.cpp
CMakeFiles/Open_gl.dir/shader.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Open_gl.dir/shader.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/shader.cpp.o -MF CMakeFiles/Open_gl.dir/shader.cpp.o.d -o CMakeFiles/Open_gl.dir/shader.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/shader.cpp

CMakeFiles/Open_gl.dir/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/shader.cpp > CMakeFiles/Open_gl.dir/shader.cpp.i

CMakeFiles/Open_gl.dir/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/shader.cpp -o CMakeFiles/Open_gl.dir/shader.cpp.s

CMakeFiles/Open_gl.dir/uvbuffer.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/uvbuffer.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/uvbuffer.cpp
CMakeFiles/Open_gl.dir/uvbuffer.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Open_gl.dir/uvbuffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/uvbuffer.cpp.o -MF CMakeFiles/Open_gl.dir/uvbuffer.cpp.o.d -o CMakeFiles/Open_gl.dir/uvbuffer.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/uvbuffer.cpp

CMakeFiles/Open_gl.dir/uvbuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/uvbuffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/uvbuffer.cpp > CMakeFiles/Open_gl.dir/uvbuffer.cpp.i

CMakeFiles/Open_gl.dir/uvbuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/uvbuffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/uvbuffer.cpp -o CMakeFiles/Open_gl.dir/uvbuffer.cpp.s

CMakeFiles/Open_gl.dir/controls.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/controls.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/controls.cpp
CMakeFiles/Open_gl.dir/controls.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Open_gl.dir/controls.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/controls.cpp.o -MF CMakeFiles/Open_gl.dir/controls.cpp.o.d -o CMakeFiles/Open_gl.dir/controls.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/controls.cpp

CMakeFiles/Open_gl.dir/controls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/controls.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/controls.cpp > CMakeFiles/Open_gl.dir/controls.cpp.i

CMakeFiles/Open_gl.dir/controls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/controls.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/controls.cpp -o CMakeFiles/Open_gl.dir/controls.cpp.s

CMakeFiles/Open_gl.dir/navigationcontrols.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/navigationcontrols.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/navigationcontrols.cpp
CMakeFiles/Open_gl.dir/navigationcontrols.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Open_gl.dir/navigationcontrols.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/navigationcontrols.cpp.o -MF CMakeFiles/Open_gl.dir/navigationcontrols.cpp.o.d -o CMakeFiles/Open_gl.dir/navigationcontrols.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/navigationcontrols.cpp

CMakeFiles/Open_gl.dir/navigationcontrols.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/navigationcontrols.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/navigationcontrols.cpp > CMakeFiles/Open_gl.dir/navigationcontrols.cpp.i

CMakeFiles/Open_gl.dir/navigationcontrols.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/navigationcontrols.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/navigationcontrols.cpp -o CMakeFiles/Open_gl.dir/navigationcontrols.cpp.s

CMakeFiles/Open_gl.dir/camera.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/camera.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/camera.cpp
CMakeFiles/Open_gl.dir/camera.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Open_gl.dir/camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/camera.cpp.o -MF CMakeFiles/Open_gl.dir/camera.cpp.o.d -o CMakeFiles/Open_gl.dir/camera.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/camera.cpp

CMakeFiles/Open_gl.dir/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/camera.cpp > CMakeFiles/Open_gl.dir/camera.cpp.i

CMakeFiles/Open_gl.dir/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/camera.cpp -o CMakeFiles/Open_gl.dir/camera.cpp.s

CMakeFiles/Open_gl.dir/fpscontrols.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/fpscontrols.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/fpscontrols.cpp
CMakeFiles/Open_gl.dir/fpscontrols.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/Open_gl.dir/fpscontrols.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/fpscontrols.cpp.o -MF CMakeFiles/Open_gl.dir/fpscontrols.cpp.o.d -o CMakeFiles/Open_gl.dir/fpscontrols.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/fpscontrols.cpp

CMakeFiles/Open_gl.dir/fpscontrols.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/fpscontrols.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/fpscontrols.cpp > CMakeFiles/Open_gl.dir/fpscontrols.cpp.i

CMakeFiles/Open_gl.dir/fpscontrols.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/fpscontrols.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/fpscontrols.cpp -o CMakeFiles/Open_gl.dir/fpscontrols.cpp.s

CMakeFiles/Open_gl.dir/velo.cpp.o: CMakeFiles/Open_gl.dir/flags.make
CMakeFiles/Open_gl.dir/velo.cpp.o: /home/ibhou/Documents/OpenGL/OpenGL_API_V6/velo.cpp
CMakeFiles/Open_gl.dir/velo.cpp.o: CMakeFiles/Open_gl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/Open_gl.dir/velo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Open_gl.dir/velo.cpp.o -MF CMakeFiles/Open_gl.dir/velo.cpp.o.d -o CMakeFiles/Open_gl.dir/velo.cpp.o -c /home/ibhou/Documents/OpenGL/OpenGL_API_V6/velo.cpp

CMakeFiles/Open_gl.dir/velo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Open_gl.dir/velo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ibhou/Documents/OpenGL/OpenGL_API_V6/velo.cpp > CMakeFiles/Open_gl.dir/velo.cpp.i

CMakeFiles/Open_gl.dir/velo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Open_gl.dir/velo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ibhou/Documents/OpenGL/OpenGL_API_V6/velo.cpp -o CMakeFiles/Open_gl.dir/velo.cpp.s

# Object files for target Open_gl
Open_gl_OBJECTS = \
"CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/Open_gl.dir/main.cpp.o" \
"CMakeFiles/Open_gl.dir/renderer.cpp.o" \
"CMakeFiles/Open_gl.dir/vertexarray.cpp.o" \
"CMakeFiles/Open_gl.dir/object.cpp.o" \
"CMakeFiles/Open_gl.dir/texture.cpp.o" \
"CMakeFiles/Open_gl.dir/vertexbuffer.cpp.o" \
"CMakeFiles/Open_gl.dir/shader.cpp.o" \
"CMakeFiles/Open_gl.dir/uvbuffer.cpp.o" \
"CMakeFiles/Open_gl.dir/controls.cpp.o" \
"CMakeFiles/Open_gl.dir/navigationcontrols.cpp.o" \
"CMakeFiles/Open_gl.dir/camera.cpp.o" \
"CMakeFiles/Open_gl.dir/fpscontrols.cpp.o" \
"CMakeFiles/Open_gl.dir/velo.cpp.o"

# External object files for target Open_gl
Open_gl_EXTERNAL_OBJECTS =

Open_gl: CMakeFiles/Open_gl.dir/Open_gl_autogen/mocs_compilation.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/main.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/renderer.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/vertexarray.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/object.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/texture.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/vertexbuffer.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/shader.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/uvbuffer.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/controls.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/navigationcontrols.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/camera.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/fpscontrols.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/velo.cpp.o
Open_gl: CMakeFiles/Open_gl.dir/build.make
Open_gl: /usr/lib/x86_64-linux-gnu/libQt6Core.so.6.4.2
Open_gl: CMakeFiles/Open_gl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable Open_gl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Open_gl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Open_gl.dir/build: Open_gl
.PHONY : CMakeFiles/Open_gl.dir/build

CMakeFiles/Open_gl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Open_gl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Open_gl.dir/clean

CMakeFiles/Open_gl.dir/depend: Open_gl_autogen/timestamp
	cd /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ibhou/Documents/OpenGL/OpenGL_API_V6 /home/ibhou/Documents/OpenGL/OpenGL_API_V6 /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build /home/ibhou/Documents/OpenGL/OpenGL_API_V6/build/CMakeFiles/Open_gl.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/Open_gl.dir/depend

