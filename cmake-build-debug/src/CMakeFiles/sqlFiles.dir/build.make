# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/panagiotis/madlib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/panagiotis/madlib/cmake-build-debug

# Utility rule file for sqlFiles.

# Include the progress variables for this target.
include src/CMakeFiles/sqlFiles.dir/progress.make

sqlFiles: src/CMakeFiles/sqlFiles.dir/build.make

.PHONY : sqlFiles

# Rule to build all files generated by this target.
src/CMakeFiles/sqlFiles.dir/build: sqlFiles

.PHONY : src/CMakeFiles/sqlFiles.dir/build

src/CMakeFiles/sqlFiles.dir/clean:
	cd /home/panagiotis/madlib/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/sqlFiles.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/sqlFiles.dir/clean

src/CMakeFiles/sqlFiles.dir/depend:
	cd /home/panagiotis/madlib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/panagiotis/madlib /home/panagiotis/madlib/src /home/panagiotis/madlib/cmake-build-debug /home/panagiotis/madlib/cmake-build-debug/src /home/panagiotis/madlib/cmake-build-debug/src/CMakeFiles/sqlFiles.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/sqlFiles.dir/depend
