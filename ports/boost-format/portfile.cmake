# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/format
    REF 78ef371d2d90462671b90c3af407fae07820b193
    SHA512 d5e18fcdd9de9f856f2b3f2f123aff6456067e004dbb2ffddc9ab8285823797132a8d7bed7acecfab99755743ae24983518615542576542108bc37cf8905a395
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
