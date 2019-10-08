# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "")
set(CPACK_BINARY_BUNDLE "")
set(CPACK_BINARY_CYGWIN "")
set(CPACK_BINARY_DEB "")
set(CPACK_BINARY_DRAGNDROP "")
set(CPACK_BINARY_FREEBSD "")
set(CPACK_BINARY_IFW "")
set(CPACK_BINARY_NSIS "")
set(CPACK_BINARY_NUGET "")
set(CPACK_BINARY_OSXX11 "")
set(CPACK_BINARY_PACKAGEMAKER "")
set(CPACK_BINARY_PRODUCTBUILD "")
set(CPACK_BINARY_RPM "")
set(CPACK_BINARY_STGZ "")
set(CPACK_BINARY_TBZ2 "")
set(CPACK_BINARY_TGZ "")
set(CPACK_BINARY_TXZ "")
set(CPACK_BINARY_TZ "")
set(CPACK_BINARY_WIX "")
set(CPACK_BINARY_ZIP "")
set(CPACK_BUILD_SOURCE_DIRS "/home/panagiotis/madlib;/home/panagiotis/madlib/cmake-build-debug")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "core;monetdb_any")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "amd64")
set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA "/home/panagiotis/madlib/deploy/DEB/config;/home/panagiotis/madlib/deploy/DEB/templates;/home/panagiotis/madlib/deploy/DEB/preinst;/home/panagiotis/madlib/deploy/DEB/postinst;/home/panagiotis/madlib/deploy/DEB/postrm")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "dev@madlib.apache.org")
set(CPACK_DEBIAN_PACKAGE_VERSION "1.16")
set(CPACK_GENERATOR "DEB")
set(CPACK_INSTALL_CMAKE_PROJECTS "/home/panagiotis/madlib/cmake-build-debug;MADlib;ALL;/")
set(CPACK_INSTALL_PREFIX "/usr/local/madlib")
set(CPACK_MODULE_PATH "/home/panagiotis/madlib/cmake")
set(CPACK_NSIS_DISPLAY_NAME "madlib")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "madlib")
set(CPACK_OSX_PACKAGE_VERSION "10.5")
set(CPACK_OUTPUT_CONFIG_FILE "/home/panagiotis/madlib/cmake-build-debug/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/home/panagiotis/madlib/deploy/description.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Apache MADlib is an Open-Source Library for Scalable in-Database Analytics")
set(CPACK_PACKAGE_FILE_NAME "madlib-1.16-Linux")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "madlib")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "madlib")
set(CPACK_PACKAGE_NAME "MADlib")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Apache MADlib")
set(CPACK_PACKAGE_VERSION "1.16")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "16")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_PACKAGING_INSTALL_PREFIX "/usr/local/madlib/Versions/1.16")
set(CPACK_RESOURCE_FILE_LICENSE "/home/panagiotis/madlib/licenses/MADlib.txt")
set(CPACK_RESOURCE_FILE_README "/home/panagiotis/madlib/deploy/description.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/home/panagiotis/madlib/deploy/PackageMaker/Welcome.html")
set(CPACK_RPM_PACKAGE_ARCHITECTURE "x86_64")
set(CPACK_RPM_PACKAGE_GROUP "Development/Libraries")
set(CPACK_RPM_PACKAGE_LICENSE "ASL 2.0")
set(CPACK_RPM_PACKAGE_REQUIRES "python >= 2.6, m4 >= 1.4")
set(CPACK_RPM_SPEC_MORE_DEFINE "%undefine __os_install_post")
set(CPACK_RPM_USER_BINARY_SPECFILE "/home/panagiotis/madlib/deploy/madlib.spec.in")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "")
set(CPACK_SOURCE_CYGWIN "")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/panagiotis/madlib/cmake-build-debug/CPackSourceConfig.cmake")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_SYSTEM_NAME "Linux")
set(CPACK_TOPLEVEL_TAG "Linux")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/panagiotis/madlib/cmake-build-debug/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()

# Configuration for component "doc"

SET(CPACK_COMPONENTS_ALL core monetdb_any)
set(CPACK_COMPONENT_DOC_DISPLAY_NAME "Documentation")
set(CPACK_COMPONENT_DOC_DESCRIPTION "API reference and documentation (generated with Doxygen).")

# Configuration for component "core"

SET(CPACK_COMPONENTS_ALL core monetdb_any)
set(CPACK_COMPONENT_CORE_DISPLAY_NAME "Madlib Core")
set(CPACK_COMPONENT_CORE_DESCRIPTION "DBMS-independent files installed with every MADlib installation.")
set(CPACK_COMPONENT_CORE_REQUIRED TRUE)

# Configuration for component group "ports"
set(CPACK_COMPONENT_GROUP_PORTS_DISPLAY_NAME "DBMS-Specific Components")
set(CPACK_COMPONENT_GROUP_PORTS_DESCRIPTION "DBMS-specific files and libraries.")
set(CPACK_COMPONENT_GROUP_PORTS_EXPANDED TRUE)

# Configuration for component group "Greenplum"
set(CPACK_COMPONENT_GROUP_GREENPLUM_DISPLAY_NAME "Greenplum Support")
set(CPACK_COMPONENT_GROUP_GREENPLUM_DESCRIPTION "MADlib support for Greenplum.")
set(CPACK_COMPONENT_GROUP_GREENPLUM_PARENT_GROUP "ports")

# Configuration for component "Greenplum_any"

SET(CPACK_COMPONENTS_ALL core monetdb_any)
set(CPACK_COMPONENT_GREENPLUM_ANY_DISPLAY_NAME "All Versions")
set(CPACK_COMPONENT_GREENPLUM_ANY_DESCRIPTION "MADlib files shared by all Greenplum versions.")
set(CPACK_COMPONENT_GREENPLUM_ANY_GROUP Greenplum)

# Configuration for component group "MonetDB"
set(CPACK_COMPONENT_GROUP_MONETDB_DISPLAY_NAME "MonetDB Support")
set(CPACK_COMPONENT_GROUP_MONETDB_DESCRIPTION "MADlib support for MonetDB.")
set(CPACK_COMPONENT_GROUP_MONETDB_PARENT_GROUP "ports")

# Configuration for component "MonetDB_any"

SET(CPACK_COMPONENTS_ALL core monetdb_any)
set(CPACK_COMPONENT_MONETDB_ANY_DISPLAY_NAME "All Versions")
set(CPACK_COMPONENT_MONETDB_ANY_DESCRIPTION "MADlib files shared by all MonetDB versions.")
set(CPACK_COMPONENT_MONETDB_ANY_GROUP MonetDB)

# Configuration for component group "PostgreSQL"
set(CPACK_COMPONENT_GROUP_POSTGRESQL_DISPLAY_NAME "PostgreSQL Support")
set(CPACK_COMPONENT_GROUP_POSTGRESQL_DESCRIPTION "MADlib support for PostgreSQL.")
set(CPACK_COMPONENT_GROUP_POSTGRESQL_PARENT_GROUP "ports")

# Configuration for component "PostgreSQL_any"

SET(CPACK_COMPONENTS_ALL core monetdb_any)
set(CPACK_COMPONENT_POSTGRESQL_ANY_DISPLAY_NAME "All Versions")
set(CPACK_COMPONENT_POSTGRESQL_ANY_DESCRIPTION "MADlib files shared by all PostgreSQL versions.")
set(CPACK_COMPONENT_POSTGRESQL_ANY_GROUP PostgreSQL)

# Configuration for component "postgresql_10"

SET(CPACK_COMPONENTS_ALL core monetdb_any)
set(CPACK_COMPONENT_POSTGRESQL_10_DISPLAY_NAME "10")
set(CPACK_COMPONENT_POSTGRESQL_10_DESCRIPTION "MADlib files specific to PostgreSQL 10.")
set(CPACK_COMPONENT_POSTGRESQL_10_GROUP PostgreSQL)
