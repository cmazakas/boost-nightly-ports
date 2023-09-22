# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/outcome
    REF b15504265f2223d07cb528a367357a5a79dfb333
    SHA512 98730f9668c01202b486704671252cf084b5e75415aaabe1b1752483507d396a5bb46985f6bc21cba7d1b2b6b37952ed1dde3b8ace5b7d11b7b44145c0d757a4
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
