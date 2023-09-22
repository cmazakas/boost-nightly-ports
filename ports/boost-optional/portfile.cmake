# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/optional
    REF 2f8d019f523ed8dd098afe02c1617bfb3560165e
    SHA512 9d67714ce340df5b610691b9f09e560e00a9e0db33ef86dbe4d5b899c2cce3d8f2d162ed3fc4bb5d5931327dc53875fbd5af03b25c03afad718a0488e5711c2a
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})