# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/io
    REF boost-1.84.0.beta1
    SHA512 d3488aaf422ab2ff0c4d7025d40ebb22d732124e101c59b6e113d4fa7a841380e043dc679c67576e3d7a1636d209ae5c7363d95fdd36c5bf3acb8198fa4b9354
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
