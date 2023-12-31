# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/lambda
    REF boost-1.84.0.beta1
    SHA512 2e968242bab1624d5cbd1eab4351e7b06813010cfdfecab22448f08195d15b24a133b0e83d401a4596fe05d2e3367406fa4f5a41cc49573a9a89ef03361f91d4
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
