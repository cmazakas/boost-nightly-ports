# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/callable_traits
    REF boost-1.84.0.beta1
    SHA512 22ce7901ce3a91b0fb8e0e5d4c943becb077d3cfeb012ba59a2d905cb49616b66c75915a9854bbcf608c2a8221fd6f1ef9d98b6e14329d81b2b2d2a40bf4ca93
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
