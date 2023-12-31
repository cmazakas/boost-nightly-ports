# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/any
    REF boost-1.84.0.beta1
    SHA512 2f010fc4191aedd5a407f2c70dc913fefb4652a00a7d7f41fbb33957f83a9e1ed328f59f14c75e54a5f3854099348b1ee19a49807486dcfbe8d711860570260a
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
