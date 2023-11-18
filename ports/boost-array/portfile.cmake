# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/array
    REF boost-1.84.0.beta1
    SHA512 c3dada51e1b3e303e16f8f3f623ee1c3bec7ec8303f65af08a0186c066efd129c06ec5ab180ccef051bed9514dcd754cbd5ed3859d45bbad534dafeba845ff65
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
