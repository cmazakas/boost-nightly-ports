# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/local_function
    REF 099e96bef0e5f2d513940c5987958121ca6f6e02
    SHA512 dc0fa83d1c1767fa250fc064469f941d68c382a637ce9ed53cc4c77627385a9b914e27784701b06b68a862ffd42b087f030c88c23a89aeff187d3c76e69450e6
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
