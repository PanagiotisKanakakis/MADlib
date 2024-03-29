# ------------------------------------------------------------------------------
# MADlib CMake Build Script
# ------------------------------------------------------------------------------

# -- Initializations that need to run even before project()

# For Solaris, we want to use the Sun compiler
# See http://www.cmake.org/Bug/view.php?id=8530
set(CMAKE_GENERATOR_CC  suncc gcc)
set(CMAKE_GENERATOR_CXX sunCC g++)

# -- CMake setup ---------------------------------------------------------------

project(MADlib)

# FindMonetDB.cmake needs at least 2.8.3. We are on the safe side and require
# the minimum version tested, which is 2.8.4.
cmake_minimum_required(VERSION 2.8.4 FATAL_ERROR)

include(ExternalProject)

# -- Local definitions (filenames, paths, etc.) --------------------------------

# The default MADlib root directory should be "/usr/local/madlib" and not
# "/usr/local" (which is the CMake default)
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
    set(CMAKE_INSTALL_PREFIX "/usr/local/madlib" CACHE PATH
        "Install path prefix, prepended onto install directories." FORCE
    )
endif(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)

set(MADLIB_VERSION_YML ${CMAKE_CURRENT_SOURCE_DIR}/src/config/Version.yml)

set(MAD_THIRD_PARTY ${CMAKE_BINARY_DIR}/third_party)

# Set the directory for tools needed during build time
set(MAD_BUILD_TOOLS ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

set(EXTERNALPROJECT_LIST_SEPARATOR "~!~")

if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    set(LINUX TRUE)
endif(${CMAKE_SYSTEM_NAME} MATCHES "Linux")

if(${CMAKE_SYSTEM_NAME} MATCHES "SunOS")
    set(SOLARIS TRUE)
endif(${CMAKE_SYSTEM_NAME} MATCHES "SunOS")

if(${CMAKE_SYSTEM_NAME} MATCHES "FreeBSD")
    set(FREEBSD TRUE)
endif(${CMAKE_SYSTEM_NAME} MATCHES "FreeBSD")

if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING
      "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel."
      FORCE)
endif(NOT CMAKE_BUILD_TYPE)

if(CMAKE_COMPILER_IS_GNUCC)
    # Let's store the gcc version in a variable
    execute_process(COMMAND ${CMAKE_C_COMPILER} -dumpversion
        OUTPUT_VARIABLE GNUCC_VERSION
        OUTPUT_STRIP_TRAILING_WHITESPACE)

    # A useful summary of warning options can be found here:
    # http://developer.apple.com/tools/xcode/compilercodewarnings.html
    # Note: gcc does not implicitly set _POSIX_C_SOURCE or _XOPEN_SOURCE
    # when using -std=c99.
    # http://pubs.opengroup.org/onlinepubs/9699919799/functions/V2_chap02.html#tag_15_02_01_01
    # We specify that we are POSIX.1-2001 compliant and XSI-conforming. We only
    # need to specify _XOPEN_SOURCE as _POSIX_C_SOURCE will be set implicitly.
    set(CMAKE_C_FLAGS "-std=c99 -D_GLIBCXX_USE_CXX11_ABI=0 -pedantic -Wall -Wextra -Wno-clobbered -D_XOPEN_SOURCE=600"
        CACHE STRING
        "Flags used by the compiler during all build types." FORCE)
    if((CMAKE_C_COMPILER_VERSION VERSION_EQUAL 5.0) OR (CMAKE_C_COMPILER_VERSION VERSION_GREATER 5.0))
        # Versions 5+ fail with the "Release" build type i.e. when optimization
        # level is -O3 or greater.
        add_compile_options("-O2")
    endif()

    # See comments below for C++:
    # Weird enough, the following property is set only for C++ but not for C
    # http://stackoverflow.com/questions/3371127/use-isystem-instead-of-i-with-cmake
    set(CMAKE_INCLUDE_SYSTEM_FLAG_C "-isystem ")
elseif(CMAKE_C_COMPILER_ID STREQUAL "SunPro")
    set(CMAKE_C_FLAGS "-xc99=%all")
endif()

if(CMAKE_COMPILER_IS_GNUCXX)
    # Let's store the gcc version in a variable
    execute_process(COMMAND ${CMAKE_CXX_COMPILER} -dumpversion
        OUTPUT_VARIABLE GNUCXX_VERSION
        OUTPUT_STRIP_TRAILING_WHITESPACE)

    # We need the 1998 standard plus amendments (ISO/IEC 14882:2003) plus TR1
    # Unfortunately, we only get this with gnu++98
    # Special notes:
    # - long long is not part of the C++ 1998/2003 standard, but it is such a
    # common (and useful) extension that we do not want to hear warnings about
    # it.
    set(CMAKE_CXX_FLAGS "-std=gnu++98 -D_GLIBCXX_USE_CXX11_ABI=0 -fdiagnostics-show-option -Wall -Wextra -pedantic -Wconversion -Wno-long-long -Wno-clobbered -mno-sse2 -fstrict-aliasing"
        CACHE STRING
        "Flags used by the compiler during all build types." FORCE)

    if((CMAKE_CXX_COMPILER_VERSION VERSION_EQUAL 5.0) OR (CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 5.0))
        # Versions 5+ fail with the "Release" build type i.e. when optimization
        # level is -O3 or greater.
        add_compile_options("-O2")
    endif()
    # We want to include some header files as system header files in order to
    # disable warnings. However, on Mac OS X, a CMake variable is not set
    # correctly on Mac OS X. http://www.cmake.org/Bug/view.php?id=10837
    if(APPLE)
        set(CMAKE_INCLUDE_SYSTEM_FLAG_CXX "-isystem ")
    endif(APPLE)
elseif(CMAKE_C_COMPILER_ID MATCHES "Clang")
    set(CMAKE_CXX_FLAGS "-stdlib=libstdc++")
endif(CMAKE_COMPILER_IS_GNUCXX)

# force a `m4_' prefix to all builtins
if(FREEBSD)
set(M4_ARGUMENTS "-P")
else()
set(M4_ARGUMENTS "--prefix-builtins")
endif()

# -- Local includes ------------------------------------------------------------

list(APPEND CMAKE_MODULE_PATH
    "${MAD_BUILD_TOOLS}")

# -- Include all parts ---------------------------------------------------------

include(Utils)
include(LinuxUtils)
include(OSXUtils)
include(Options)

# -- Get madlib version info ----------------------------------------------------
# Read and parse Version.yml file
file(READ "${MADLIB_VERSION_YML}" _MADLIB_VERSION_CONTENTS)
string(REGEX REPLACE "^.*version:[ \t]*([^\n]*)\n.*" "\\1" MADLIB_VERSION_STRING "${_MADLIB_VERSION_CONTENTS}")

string(REPLACE "-" "_" MADLIB_VERSION_STRING_NO_HYPHEN "${MADLIB_VERSION_STRING}")

string(REGEX REPLACE "([0-9]+).*" "\\1" MADLIB_VERSION_MAJOR "${MADLIB_VERSION_STRING}")
string(REGEX REPLACE "[0-9]+\\.([0-9]+).*" "\\1" MADLIB_VERSION_MINOR "${MADLIB_VERSION_STRING}")
if("${MADLIB_VERSION_STRING}" MATCHES "[0-9]+\\.[0-9]+\\.([0-9]+).*")
    string(REGEX REPLACE "[0-9]+\\.[0-9]+\\.([0-9]+).*" "\\1" MADLIB_VERSION_PATCH "${MADLIB_VERSION_STRING}")
else()
    set(MADLIB_VERSION_PATCH 0)
endif()

# Save build time
execute_process(
    COMMAND date -u
    OUTPUT_VARIABLE MADLIB_BUILD_TIME
    OUTPUT_STRIP_TRAILING_WHITESPACE)
# Save git revision
execute_process(
    COMMAND git describe
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    OUTPUT_VARIABLE MADLIB_GIT_REVISION
    ERROR_QUIET
    RESULT_VARIABLE _RESULT
    OUTPUT_STRIP_TRAILING_WHITESPACE)
if(NOT _RESULT EQUAL 0)
    set(MADLIB_GIT_REVISION "unknown")
endif(NOT _RESULT EQUAL 0)
if(CMAKE_COMPILER_IS_GNUCC)
    set(MADLIB_C_COMPILER "gcc ${GNUCC_VERSION}")
else(CMAKE_COMPILER_IS_GNUCC)
    set(MADLIB_C_COMPILER ${CMAKE_C_COMPILER_ID})
endif(CMAKE_COMPILER_IS_GNUCC)
if(CMAKE_COMPILER_IS_GNUCXX)
    set(MADLIB_CXX_COMPILER "g++ ${GNUCC_VERSION}")
else(CMAKE_COMPILER_IS_GNUCXX)
    set(MADLIB_CXX_COMPILER ${CMAKE_CXX_COMPILER_ID})
endif(CMAKE_COMPILER_IS_GNUCXX)

# -- Third-party dependencies: Find m4 -----------------------------------------
# Unfortunately, we currently rely on GNU m4 due to option --prefix-builtins,
# which is not POSIX-standardized.
if(SOLARIS)
    # Solaris ships GNU m4 as gm4, so we want to use that
    find_program(M4_BINARY gm4
        PATHS /usr/sfw/bin
        DOC "Path to the GNU m4 preprocessor."
    )
else()
    find_program(M4_BINARY m4
        PATHS /usr/local/bin /usr/bin /bin /opt/local/bin
        DOC "Path to the GNU m4 preprocessor."
    )
endif()

if(NOT M4_BINARY)
    message(FATAL_ERROR "Cannot find the m4 preprocessor.")
endif(NOT M4_BINARY)

# -- Install Read-me files and license directory -------------------------------

install(DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/licenses"
    DESTINATION .
    COMPONENT core
    PATTERN ".DS_Store" EXCLUDE
)
install(
    FILES
        "${CMAKE_CURRENT_SOURCE_DIR}/README.md"
        "${CMAKE_CURRENT_SOURCE_DIR}/RELEASE_NOTES"
    DESTINATION doc
    COMPONENT core
)
install(
    FILES
        "${CMAKE_CURRENT_SOURCE_DIR}/NOTICE"
        "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE"
    DESTINATION .
    COMPONENT core
)


# -- Add subdirectories --------------------------------------------------------

add_subdirectory(src)

# if(CMAKE_COMPILER_IS_GNUCC AND CMAKE_COMPILER_IS_GNUCXX)
#e.g., Clang/Clang++ does not work
# endif(CMAKE_COMPILER_IS_GNUCC AND CMAKE_COMPILER_IS_GNUCXX)
add_subdirectory(doc)
add_subdirectory(deploy)

# -- Install path for specific madlib version ----------------------------------
set(CMAKE_MADLIB_ROOT "${CMAKE_INSTALL_PREFIX}")
set(CMAKE_INSTALL_PREFIX "${CMAKE_MADLIB_ROOT}/Versions/${MADLIB_VERSION_STRING}")

# Move bin to old_bin if upgrading from V0.6 or earlier version
# below script finds a directory named 'bin' and copies to 'old_bin' ignoring
# any error messages (eg. if 'bin' does not exist)
install(CODE "
        EXECUTE_PROCESS(
            COMMAND find ${CMAKE_MADLIB_ROOT}/bin -type d -exec cp -RPf {} ${CMAKE_MADLIB_ROOT}/old_bin \;
            ERROR_FILE /dev/null
        )"
)
# remove the 'bin' directory to replace with symbolic link
install(CODE "
        EXECUTE_PROCESS(
            COMMAND find ${CMAKE_MADLIB_ROOT}/bin -depth -type d -exec rm -r {} \;
            ERROR_FILE /dev/null
        )"
)

# Move doc to old_doc if upgrading from V0.6 or earlier version
install(CODE "
        EXECUTE_PROCESS(
            COMMAND find ${CMAKE_MADLIB_ROOT}/doc -type d -exec cp -RPf {} ${CMAKE_MADLIB_ROOT}/old_doc \;
            ERROR_FILE /dev/null
        )"
)
install(CODE "
        EXECUTE_PROCESS(
            COMMAND find ${CMAKE_MADLIB_ROOT}/doc -depth -type d -exec rm -r {} \;
            ERROR_FILE /dev/null
        )"
)

install(CODE "
    EXECUTE_PROCESS(COMMAND ln -nsf
           ${CMAKE_INSTALL_PREFIX}
           ${CMAKE_MADLIB_ROOT}/Current
           )"
)

# Create symlink bin
install(CODE "
    EXECUTE_PROCESS(COMMAND ln -nsf
           ${CMAKE_MADLIB_ROOT}/Current/bin
           ${CMAKE_MADLIB_ROOT}/bin
           )"
)

# Create symlink doc
install(CODE "
    EXECUTE_PROCESS(COMMAND ln -nsf
           ${CMAKE_MADLIB_ROOT}/Current/doc
           ${CMAKE_MADLIB_ROOT}/doc
           )
")

