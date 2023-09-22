# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/convert
    REF 1179fbd5689b3146d3a41239516790fc38c70eac
    SHA512 d60405dedaed1a50a00d6ddb029cfe3dbc932be185e621b2242f8303539b6a6579915b41986b0b437d6a07f198ebcf9d66c1087c9b0b11ebee0b835e974df162
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})