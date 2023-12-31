# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/stl_interfaces
    REF boost-1.84.0.beta1
    SHA512 bb6848808da157478c33a444c2c2f0f7da72259d1b73926ecd8a79fa9a192d15c6d44e690aceaf04feaa500fbdb10271df56d3ecc57b9947cc336bd5f36382ec
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
