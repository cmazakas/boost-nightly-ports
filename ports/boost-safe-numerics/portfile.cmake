# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/safe_numerics
    REF boost-1.84.0.beta1
    SHA512 ca45a740631d64b58fabdea86c0192ef4e1b0f59a682a2801f1ff984d30f1d3f0fc91b0a7170061e659fd90a848862d88fccd9f4e7b54de7c0931f5ef9c68512
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
