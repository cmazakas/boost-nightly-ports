# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/any
    REF f104bceb329021b2018db317521637fe4a7c3aee
    SHA512 67d8cd2c73a923be24fe6e631af560c7b0d40258af283b4a9d65c5cfa213cfbd45513f3d410d6692f46b4e7d04f1c2ec9c5bbf141395717f3ef903d2f974989f
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})