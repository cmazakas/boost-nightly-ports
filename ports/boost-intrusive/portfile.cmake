# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/intrusive
    REF boost-1.84.0.beta1
    SHA512 b2f17b940618229b3cb2f0d102e5c1e6c23a3f6ef71eaa524e3ea922f98a79d5ba855f70c2023f1a69efc42a7b0b8a5e0439b6a40b76490f735ff18508e2efba
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
