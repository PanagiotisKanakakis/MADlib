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

# Utility rule file for configFiles.

# Include the progress variables for this target.
include src/config/CMakeFiles/configFiles.dir/progress.make

src/config/CMakeFiles/configFiles: src/config/Modules.yml
src/config/CMakeFiles/configFiles: src/config/Ports.yml
src/config/CMakeFiles/configFiles: src/config/Version.yml


src/config/Modules.yml: ../src/config/Modules.yml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying Modules.yml."
	cd /home/panagiotis/madlib/cmake-build-debug/src/config && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy "/home/panagiotis/madlib/src/config/Modules.yml" "/home/panagiotis/madlib/cmake-build-debug/src/config/Modules.yml"

src/config/Ports.yml: ../src/config/Ports.yml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Copying Ports.yml."
	cd /home/panagiotis/madlib/cmake-build-debug/src/config && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy "/home/panagiotis/madlib/src/config/Ports.yml" "/home/panagiotis/madlib/cmake-build-debug/src/config/Ports.yml"

src/config/Version.yml: ../src/config/Version.yml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Copying Version.yml."
	cd /home/panagiotis/madlib/cmake-build-debug/src/config && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy "/home/panagiotis/madlib/src/config/Version.yml" "/home/panagiotis/madlib/cmake-build-debug/src/config/Version.yml"

configFiles: src/config/CMakeFiles/configFiles
configFiles: src/config/Modules.yml
configFiles: src/config/Ports.yml
configFiles: src/config/Version.yml
configFiles: src/config/CMakeFiles/configFiles.dir/build.make

.PHONY : configFiles

# Rule to build all files generated by this target.
src/config/CMakeFiles/configFiles.dir/build: configFiles

.PHONY : src/config/CMakeFiles/configFiles.dir/build

src/config/CMakeFiles/configFiles.dir/clean:
	cd /home/panagiotis/madlib/cmake-build-debug/src/config && $(CMAKE_COMMAND) -P CMakeFiles/configFiles.dir/cmake_clean.cmake
.PHONY : src/config/CMakeFiles/configFiles.dir/clean

src/config/CMakeFiles/configFiles.dir/depend:
	cd /home/panagiotis/madlib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/panagiotis/madlib /home/panagiotis/madlib/src/config /home/panagiotis/madlib/cmake-build-debug /home/panagiotis/madlib/cmake-build-debug/src/config /home/panagiotis/madlib/cmake-build-debug/src/config/CMakeFiles/configFiles.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/config/CMakeFiles/configFiles.dir/depend

