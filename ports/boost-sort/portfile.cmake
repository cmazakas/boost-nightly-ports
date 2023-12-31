# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/sort
    REF boost-1.84.0.beta1
    SHA512 6a6c1ce5e9c5b2b2b8a48542f687741bb620611471567ba9a61747f590415897c0eb55f9e8a8d3a908eb1d1d23b2be7579278db47c95a92a7fc8ed9b43301568
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
