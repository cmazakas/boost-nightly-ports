# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/function_types
    REF 895335874d67987ada0d8bf6ca1725e70642ed49
    SHA512 77fb880324bbb18700d432e3091ddfafc1408b83d9241aa8f7dde068dee3abdbf20fe3b1f804ff7b8676afce77e1f70e38809efff57b8a2de0f81291b96101fd
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})