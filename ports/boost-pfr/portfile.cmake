# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/pfr
    REF 730f40b6b2cbaec88712ecbe32c33c8ae2b24edd
    SHA512 ab2a649576d8ac45b9747f4ecd66cef7dbe8cfbabfa2c9592abbccc3ea62ee0f2e0d562425921698571299fe9c7dd872fffaa712b0d0a2a163857ba53ebfa2e7
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})