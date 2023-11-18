# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/icl
    REF boost-1.84.0.beta1
    SHA512 f7e8c008bd43bf1ac69452fec6d58d8d2cf920b51daea4f10d5a6de04b4ac6c94171b9db7fec94bcca639c9457cb2fe114a16e0eaff4cad2f00513a66e214f5c
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
