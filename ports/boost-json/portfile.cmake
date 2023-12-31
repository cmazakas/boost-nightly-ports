# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/json
    REF boost-1.84.0.beta1
    SHA512 335d558cf7d04217748117c68823e2466f6f0328ac1e7bc06da4677cae6acac09ef44669df4a5a346aa0b832059386b5415b2a6ee4c8933648ab4272f442f650
    HEAD_REF master
    PATCHES
        0001-Fix-use-of-intrinsics-on-windows-ARM-platforms.patch
        0002-Replace-_M_ARM64-with-_M_ARM-for-32-bit-path.patch
)

vcpkg_replace_string("${SOURCE_PATH}/build/Jamfile"
    "import ../../config/checks/config"
    "import ../config/checks/config"
)
file(COPY "${CURRENT_INSTALLED_DIR}/share/boost-config/checks" DESTINATION "${SOURCE_PATH}/config")
include(${CURRENT_HOST_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(
    SOURCE_PATH ${SOURCE_PATH}
    BOOST_CMAKE_FRAGMENT "${CMAKE_CURRENT_LIST_DIR}/b2-options.cmake"
)
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
