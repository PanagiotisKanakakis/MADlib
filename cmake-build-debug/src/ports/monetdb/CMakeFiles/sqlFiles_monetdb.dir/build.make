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

# Utility rule file for sqlFiles_monetdb.

# Include the progress variables for this target.
include src/ports/monetdb/CMakeFiles/sqlFiles_monetdb.dir/progress.make

src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/sample/sample.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/sample/test/sample.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/array_ops/array_ops.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/array_ops/test/array_ops.ic.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/array_ops/test/array_ops.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/sketch/sketch.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/sketch/test/cm.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/sketch/test/fm.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/sketch/test/mfv.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/sketch/test/support.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/stemmer/porter_stemmer.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/stemmer/test/porter_stemmer.ic.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/stemmer/test/porter_stemmer.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/svec/svec.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/svec_util/test/gp_sfv_sort_order.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/svec_util/test/svec_test.sql_in
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb: src/ports/monetdb/modules/svec_util/svec_util.sql_in


src/ports/monetdb/modules/sample/sample.sql_in: ../src/ports/monetdb/modules/sample/sample.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Validating and copying sample/sample.sql_in."
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py "/home/panagiotis/madlib/src/ports/monetdb/modules/sample/sample.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy "/home/panagiotis/madlib/src/ports/monetdb/modules/sample/sample.sql_in" "/home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/sample/sample.sql_in"

src/ports/monetdb/modules/sample/test/sample.sql_in: ../src/ports/monetdb/modules/sample/test/sample.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Validating and copying sample/test/sample.sql_in."
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py "/home/panagiotis/madlib/src/ports/monetdb/modules/sample/test/sample.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy "/home/panagiotis/madlib/src/ports/monetdb/modules/sample/test/sample.sql_in" "/home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/sample/test/sample.sql_in"

src/ports/monetdb/modules/array_ops/array_ops.sql_in: ../methods/array_ops/src/pg_gp/array_ops.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Validating and copying array_ops/src/pg_gp/array_ops.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/array_ops/src/pg_gp/array_ops.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/array_ops/src/pg_gp/array_ops.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/array_ops/array_ops.sql_in

src/ports/monetdb/modules/array_ops/test/array_ops.ic.sql_in: ../methods/array_ops/src/pg_gp/test/array_ops.ic.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Validating and copying array_ops/src/pg_gp/test/array_ops.ic.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/array_ops/src/pg_gp/test/array_ops.ic.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/array_ops/src/pg_gp/test/array_ops.ic.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/array_ops/test/array_ops.ic.sql_in

src/ports/monetdb/modules/array_ops/test/array_ops.sql_in: ../methods/array_ops/src/pg_gp/test/array_ops.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Validating and copying array_ops/src/pg_gp/test/array_ops.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/array_ops/src/pg_gp/test/array_ops.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/array_ops/src/pg_gp/test/array_ops.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/array_ops/test/array_ops.sql_in

src/ports/monetdb/modules/sketch/sketch.sql_in: ../methods/sketch/src/pg_gp/sketch.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Validating and copying sketch/src/pg_gp/sketch.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/sketch/src/pg_gp/sketch.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/sketch/src/pg_gp/sketch.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/sketch/sketch.sql_in

src/ports/monetdb/modules/sketch/test/cm.sql_in: ../methods/sketch/src/pg_gp/sql/cm.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Validating and copying sketch/src/pg_gp/sql/cm.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/sketch/src/pg_gp/sql/cm.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/sketch/src/pg_gp/sql/cm.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/sketch/test/cm.sql_in

src/ports/monetdb/modules/sketch/test/fm.sql_in: ../methods/sketch/src/pg_gp/sql/fm.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Validating and copying sketch/src/pg_gp/sql/fm.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/sketch/src/pg_gp/sql/fm.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/sketch/src/pg_gp/sql/fm.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/sketch/test/fm.sql_in

src/ports/monetdb/modules/sketch/test/mfv.sql_in: ../methods/sketch/src/pg_gp/sql/mfv.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Validating and copying sketch/src/pg_gp/sql/mfv.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/sketch/src/pg_gp/sql/mfv.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/sketch/src/pg_gp/sql/mfv.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/sketch/test/mfv.sql_in

src/ports/monetdb/modules/sketch/test/support.sql_in: ../methods/sketch/src/pg_gp/sql/support.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Validating and copying sketch/src/pg_gp/sql/support.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/sketch/src/pg_gp/sql/support.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/sketch/src/pg_gp/sql/support.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/sketch/test/support.sql_in

src/ports/monetdb/modules/stemmer/porter_stemmer.sql_in: ../methods/stemmer/src/pg_gp/porter_stemmer.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Validating and copying stemmer/src/pg_gp/porter_stemmer.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/stemmer/src/pg_gp/porter_stemmer.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/stemmer/src/pg_gp/porter_stemmer.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/stemmer/porter_stemmer.sql_in

src/ports/monetdb/modules/stemmer/test/porter_stemmer.ic.sql_in: ../methods/stemmer/src/pg_gp/test/porter_stemmer.ic.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Validating and copying stemmer/src/pg_gp/test/porter_stemmer.ic.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/stemmer/src/pg_gp/test/porter_stemmer.ic.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/stemmer/src/pg_gp/test/porter_stemmer.ic.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/stemmer/test/porter_stemmer.ic.sql_in

src/ports/monetdb/modules/stemmer/test/porter_stemmer.sql_in: ../methods/stemmer/src/pg_gp/test/porter_stemmer.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Validating and copying stemmer/src/pg_gp/test/porter_stemmer.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/stemmer/src/pg_gp/test/porter_stemmer.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/stemmer/src/pg_gp/test/porter_stemmer.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/stemmer/test/porter_stemmer.sql_in

src/ports/monetdb/modules/svec/svec.sql_in: ../methods/svec/src/pg_gp/svec.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Validating and copying svec/src/pg_gp/svec.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/svec/src/pg_gp/svec.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/svec/src/pg_gp/svec.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/svec/svec.sql_in

src/ports/monetdb/modules/svec_util/test/gp_sfv_sort_order.sql_in: ../methods/svec_util/src/pg_gp/sql/gp_sfv_sort_order.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Validating and copying svec_util/src/pg_gp/sql/gp_sfv_sort_order.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/svec_util/src/pg_gp/sql/gp_sfv_sort_order.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/svec_util/src/pg_gp/sql/gp_sfv_sort_order.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/svec_util/test/gp_sfv_sort_order.sql_in

src/ports/monetdb/modules/svec_util/test/svec_test.sql_in: ../methods/svec_util/src/pg_gp/sql/svec_test.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Validating and copying svec_util/src/pg_gp/sql/svec_test.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/svec_util/src/pg_gp/sql/svec_test.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/svec_util/src/pg_gp/sql/svec_test.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/svec_util/test/svec_test.sql_in

src/ports/monetdb/modules/svec_util/svec_util.sql_in: ../methods/svec_util/src/pg_gp/svec_util.sql_in
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/panagiotis/madlib/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Validating and copying svec_util/src/pg_gp/svec_util.sql_in"
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && ../../../../cmake/TestIfNoUTF8BOM.py /home/panagiotis/madlib/methods/svec_util/src/pg_gp/svec_util.sql_in
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && /home/panagiotis/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/192.5728.100/bin/cmake/linux/bin/cmake -E copy /home/panagiotis/madlib/methods/svec_util/src/pg_gp/svec_util.sql_in /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/modules/svec_util/svec_util.sql_in

sqlFiles_monetdb: src/ports/monetdb/CMakeFiles/sqlFiles_monetdb
sqlFiles_monetdb: src/ports/monetdb/modules/sample/sample.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/sample/test/sample.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/array_ops/array_ops.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/array_ops/test/array_ops.ic.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/array_ops/test/array_ops.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/sketch/sketch.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/sketch/test/cm.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/sketch/test/fm.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/sketch/test/mfv.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/sketch/test/support.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/stemmer/porter_stemmer.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/stemmer/test/porter_stemmer.ic.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/stemmer/test/porter_stemmer.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/svec/svec.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/svec_util/test/gp_sfv_sort_order.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/svec_util/test/svec_test.sql_in
sqlFiles_monetdb: src/ports/monetdb/modules/svec_util/svec_util.sql_in
sqlFiles_monetdb: src/ports/monetdb/CMakeFiles/sqlFiles_monetdb.dir/build.make

.PHONY : sqlFiles_monetdb

# Rule to build all files generated by this target.
src/ports/monetdb/CMakeFiles/sqlFiles_monetdb.dir/build: sqlFiles_monetdb

.PHONY : src/ports/monetdb/CMakeFiles/sqlFiles_monetdb.dir/build

src/ports/monetdb/CMakeFiles/sqlFiles_monetdb.dir/clean:
	cd /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb && $(CMAKE_COMMAND) -P CMakeFiles/sqlFiles_monetdb.dir/cmake_clean.cmake
.PHONY : src/ports/monetdb/CMakeFiles/sqlFiles_monetdb.dir/clean

src/ports/monetdb/CMakeFiles/sqlFiles_monetdb.dir/depend:
	cd /home/panagiotis/madlib/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/panagiotis/madlib /home/panagiotis/madlib/src/ports/monetdb /home/panagiotis/madlib/cmake-build-debug /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb /home/panagiotis/madlib/cmake-build-debug/src/ports/monetdb/CMakeFiles/sqlFiles_monetdb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/ports/monetdb/CMakeFiles/sqlFiles_monetdb.dir/depend

