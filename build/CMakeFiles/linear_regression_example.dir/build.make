# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /opt/cmake-3.22.3/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.22.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ouyanglong/work2/kml/kernel-ml

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ouyanglong/work2/kml/kernel-ml/build

# Include any dependencies generated for this target.
include CMakeFiles/linear_regression_example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/linear_regression_example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/linear_regression_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/linear_regression_example.dir/flags.make

CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.o: CMakeFiles/linear_regression_example.dir/flags.make
CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.o: ../examples/linear_regression.c
CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.o: CMakeFiles/linear_regression_example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ouyanglong/work2/kml/kernel-ml/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.o -MF CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.o.d -o CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.o -c /home/ouyanglong/work2/kml/kernel-ml/examples/linear_regression.c

CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ouyanglong/work2/kml/kernel-ml/examples/linear_regression.c > CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.i

CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ouyanglong/work2/kml/kernel-ml/examples/linear_regression.c -o CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.s

# Object files for target linear_regression_example
linear_regression_example_OBJECTS = \
"CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.o"

# External object files for target linear_regression_example
linear_regression_example_EXTERNAL_OBJECTS =

linear_regression_example: CMakeFiles/linear_regression_example.dir/examples/linear_regression.c.o
linear_regression_example: CMakeFiles/linear_regression_example.dir/build.make
linear_regression_example: libkml_user.a
linear_regression_example: CMakeFiles/linear_regression_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ouyanglong/work2/kml/kernel-ml/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable linear_regression_example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linear_regression_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/linear_regression_example.dir/build: linear_regression_example
.PHONY : CMakeFiles/linear_regression_example.dir/build

CMakeFiles/linear_regression_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/linear_regression_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/linear_regression_example.dir/clean

CMakeFiles/linear_regression_example.dir/depend:
	cd /home/ouyanglong/work2/kml/kernel-ml/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ouyanglong/work2/kml/kernel-ml /home/ouyanglong/work2/kml/kernel-ml /home/ouyanglong/work2/kml/kernel-ml/build /home/ouyanglong/work2/kml/kernel-ml/build /home/ouyanglong/work2/kml/kernel-ml/build/CMakeFiles/linear_regression_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/linear_regression_example.dir/depend

