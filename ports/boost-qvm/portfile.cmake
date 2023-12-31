# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/qvm
    REF boost-1.84.0.beta1
    SHA512 0f3cf7c4c2efa374e3acb73a783c9f72c852f1b11a7bf1a1000dc4b4d1ee6baf2d944c2d3172c461296e3229bbb1de6f474ae4348cf8b13c54249a3fb8f0cc6f
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
