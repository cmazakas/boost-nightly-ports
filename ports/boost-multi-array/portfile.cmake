# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/multi_array
    REF boost-1.84.0.beta1
    SHA512 1d208c9bdcbd8a7dfcb6daaa969dfa4b4be431bd2b27a5c3bb9f3ce0a7dcf256a3cce790cf8bf808730311aee5079a9fd5c074569160970e1d03f7d503491532
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
