# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/htqcheng/MRSD Spring 2020/Folders"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/htqcheng/MRSD Spring 2020/Folders/build"

# Include any dependencies generated for this target.
include CMakeFiles/glfw_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/glfw_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/glfw_test.dir/flags.make

CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o: CMakeFiles/glfw_test.dir/flags.make
CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o: ../src/glfw_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/htqcheng/MRSD Spring 2020/Folders/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o -c "/home/htqcheng/MRSD Spring 2020/Folders/src/glfw_test.cpp"

CMakeFiles/glfw_test.dir/src/glfw_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/glfw_test.dir/src/glfw_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/htqcheng/MRSD Spring 2020/Folders/src/glfw_test.cpp" > CMakeFiles/glfw_test.dir/src/glfw_test.cpp.i

CMakeFiles/glfw_test.dir/src/glfw_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/glfw_test.dir/src/glfw_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/htqcheng/MRSD Spring 2020/Folders/src/glfw_test.cpp" -o CMakeFiles/glfw_test.dir/src/glfw_test.cpp.s

CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o.requires:

.PHONY : CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o.requires

CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o.provides: CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o.requires
	$(MAKE) -f CMakeFiles/glfw_test.dir/build.make CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o.provides.build
.PHONY : CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o.provides

CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o.provides.build: CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o


CMakeFiles/glfw_test.dir/src/glad.c.o: CMakeFiles/glfw_test.dir/flags.make
CMakeFiles/glfw_test.dir/src/glad.c.o: ../src/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/htqcheng/MRSD Spring 2020/Folders/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/glfw_test.dir/src/glad.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_test.dir/src/glad.c.o   -c "/home/htqcheng/MRSD Spring 2020/Folders/src/glad.c"

CMakeFiles/glfw_test.dir/src/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_test.dir/src/glad.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/home/htqcheng/MRSD Spring 2020/Folders/src/glad.c" > CMakeFiles/glfw_test.dir/src/glad.c.i

CMakeFiles/glfw_test.dir/src/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_test.dir/src/glad.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/home/htqcheng/MRSD Spring 2020/Folders/src/glad.c" -o CMakeFiles/glfw_test.dir/src/glad.c.s

CMakeFiles/glfw_test.dir/src/glad.c.o.requires:

.PHONY : CMakeFiles/glfw_test.dir/src/glad.c.o.requires

CMakeFiles/glfw_test.dir/src/glad.c.o.provides: CMakeFiles/glfw_test.dir/src/glad.c.o.requires
	$(MAKE) -f CMakeFiles/glfw_test.dir/build.make CMakeFiles/glfw_test.dir/src/glad.c.o.provides.build
.PHONY : CMakeFiles/glfw_test.dir/src/glad.c.o.provides

CMakeFiles/glfw_test.dir/src/glad.c.o.provides.build: CMakeFiles/glfw_test.dir/src/glad.c.o


# Object files for target glfw_test
glfw_test_OBJECTS = \
"CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o" \
"CMakeFiles/glfw_test.dir/src/glad.c.o"

# External object files for target glfw_test
glfw_test_EXTERNAL_OBJECTS =

glfw_test: CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o
glfw_test: CMakeFiles/glfw_test.dir/src/glad.c.o
glfw_test: CMakeFiles/glfw_test.dir/build.make
glfw_test: ThirdParty/glfw/src/libglfw3.a
glfw_test: /usr/lib/x86_64-linux-gnu/librt.so
glfw_test: /usr/lib/x86_64-linux-gnu/libm.so
glfw_test: /usr/lib/x86_64-linux-gnu/libX11.so
glfw_test: /usr/lib/x86_64-linux-gnu/libXrandr.so
glfw_test: /usr/lib/x86_64-linux-gnu/libXinerama.so
glfw_test: /usr/lib/x86_64-linux-gnu/libXcursor.so
glfw_test: CMakeFiles/glfw_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/htqcheng/MRSD Spring 2020/Folders/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable glfw_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfw_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/glfw_test.dir/build: glfw_test

.PHONY : CMakeFiles/glfw_test.dir/build

CMakeFiles/glfw_test.dir/requires: CMakeFiles/glfw_test.dir/src/glfw_test.cpp.o.requires
CMakeFiles/glfw_test.dir/requires: CMakeFiles/glfw_test.dir/src/glad.c.o.requires

.PHONY : CMakeFiles/glfw_test.dir/requires

CMakeFiles/glfw_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/glfw_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/glfw_test.dir/clean

CMakeFiles/glfw_test.dir/depend:
	cd "/home/htqcheng/MRSD Spring 2020/Folders/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/htqcheng/MRSD Spring 2020/Folders" "/home/htqcheng/MRSD Spring 2020/Folders" "/home/htqcheng/MRSD Spring 2020/Folders/build" "/home/htqcheng/MRSD Spring 2020/Folders/build" "/home/htqcheng/MRSD Spring 2020/Folders/build/CMakeFiles/glfw_test.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/glfw_test.dir/depend

