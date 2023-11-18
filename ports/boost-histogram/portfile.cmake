# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/histogram
    REF boost-1.84.0.beta1
    SHA512 1213c01cae6e470b75445c2a0a044951cb083ad87bff1e53202ae774e4bbab5e8d24ba7dc479645529b8925cc68880e876212da2c43ad61e42d32a421339bcea
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
