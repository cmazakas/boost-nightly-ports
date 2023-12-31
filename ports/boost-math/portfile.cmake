# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/math
    REF boost-1.84.0.beta1
    SHA512 05d24ba324477aed8dde5e23cc02229de6e4e24606c166f4706d11a9290f4e2c0e1704d15077ed5bf3cc4faffd377c92695def89c94b6d5d975501a87e9966b3
    HEAD_REF master
    PATCHES 001-remove-checks.patch
)

include(${CURRENT_HOST_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(
    SOURCE_PATH ${SOURCE_PATH}
    BOOST_CMAKE_FRAGMENT "${CMAKE_CURRENT_LIST_DIR}/b2-options.cmake"
)
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
