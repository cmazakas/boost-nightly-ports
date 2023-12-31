set(VCPKG_POLICY_EMPTY_PACKAGE enabled)

if(CMAKE_HOST_WIN32 AND VCPKG_CMAKE_SYSTEM_NAME AND NOT VCPKG_CMAKE_SYSTEM_NAME STREQUAL "WindowsStore" AND NOT VCPKG_CMAKE_SYSTEM_NAME STREQUAL "MinGW")
    return()
endif()

set(BOOST_VERSION 1.84.0.beta1)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/build
    REF boost-${BOOST_VERSION}
    SHA512 1dfd98087b41190437ea07a82fca0a85b71d29ee3f059c6d49916d089102d7fd79a721f720019b98f9cdefcada2cc8dc8fc87d3507a70b43fc0e1b4eaa7853f8
    HEAD_REF master
    PATCHES
        0002-fix-get-version.patch
        0003-fix-emscripten.patch
        0004-workaround-MSVC-codegen-bug-in-17.5-on-ARM64.patch
)

vcpkg_download_distfile(ARCHIVE
    URLS "https://raw.githubusercontent.com/boostorg/boost/boost-${BOOST_VERSION}/LICENSE_1_0.txt"
    FILENAME "boost_LICENSE_1_0.txt"
    SHA512 d6078467835dba8932314c1c1e945569a64b065474d7aced27c9a7acc391d52e9f234138ed9f1aa9cd576f25f12f557e0b733c14891d42c16ecdc4a7bd4d60b8
)

vcpkg_download_distfile(BOOSTCPP_ARCHIVE
    URLS "https://raw.githubusercontent.com/boostorg/boost/boost-${BOOST_VERSION}/boostcpp.jam"
    FILENAME "boost-${BOOST_VERSION}-boostcpp.jam"
    SHA512 32feae4e13418f68702b18964b17e706255429dd881a098355a0b644da11a97c42aa7eeffa5cc4e30aa8a370dde2097aecc62175fb37cd5cf9766e7fc6303da7
)

# https://github.com/boostorg/boost/pull/206
# do not add version suffix for android
file(READ "${BOOSTCPP_ARCHIVE}" _contents)
string(REPLACE "aix &&" "aix android &&" _contents "${_contents}")
file(WRITE "${SOURCE_PATH}/boostcpp.jam" "${_contents}")

file(INSTALL ${ARCHIVE} DESTINATION ${CURRENT_PACKAGES_DIR}/share/boost-build RENAME copyright)

# This fixes the lib path to use desktop libs instead of uwp -- TODO: improve this with better "host" compilation
string(REPLACE "\\store\\;" "\\;" LIB "$ENV{LIB}")
set(ENV{LIB} "${LIB}")

file(COPY
    ${SOURCE_PATH}/
    DESTINATION ${CURRENT_PACKAGES_DIR}/tools/boost-build
)

file(READ "${CURRENT_PACKAGES_DIR}/tools/boost-build/src/tools/msvc.jam" _contents)
string(REPLACE " /ZW /EHsc " "" _contents "${_contents}")
string(REPLACE "-nologo" "" _contents "${_contents}")
string(REPLACE "/nologo" "" _contents "${_contents}")
string(REPLACE "/Zm800" "" _contents "${_contents}")
string(REPLACE "<define>_WIN32_WINNT=0x0602" "" _contents "${_contents}")
file(WRITE "${CURRENT_PACKAGES_DIR}/tools/boost-build/src/tools/msvc.jam" "${_contents}")

message(STATUS "Bootstrapping...")
if(CMAKE_HOST_WIN32)
    if(VCPKG_TARGET_IS_MINGW)
        set(TOOLSET mingw)
    else()
        set(TOOLSET msvc)
    endif()
    vcpkg_execute_required_process(
        COMMAND "${CURRENT_PACKAGES_DIR}/tools/boost-build/bootstrap.bat" ${TOOLSET}
        WORKING_DIRECTORY ${CURRENT_PACKAGES_DIR}/tools/boost-build
        LOGNAME bootstrap-${TARGET_TRIPLET}
    )
else()
    vcpkg_execute_required_process(
        COMMAND "${CURRENT_PACKAGES_DIR}/tools/boost-build/bootstrap.sh"
        WORKING_DIRECTORY ${CURRENT_PACKAGES_DIR}/tools/boost-build
        LOGNAME bootstrap-${TARGET_TRIPLET}
    )
endif()
