# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/static_assert
    REF 45eec41c293bc5cd36ec3ed83671f70bc1aadc9f
    SHA512 b8e301c50eb53f16c03f8585a7706a43dfe8beebf2848918d4b95c2b6464121cf9fec1bea06f1b6e2dd2b791bf9cf477e031db5757672c2c9b3c164f20ed0716
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})