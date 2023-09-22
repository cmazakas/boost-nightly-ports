# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/gil
    REF eabd679f632be3170d98145fcc3b49e85df7cc4b
    SHA512 70d56e18a580d671b377e8283eaa644546b283c4cf2d237a821f11fa40039eb4f43795f9cc05e6ec00bf3f18b5c233754fa71b7450a2ddc64239ff2b2b0e9149
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})