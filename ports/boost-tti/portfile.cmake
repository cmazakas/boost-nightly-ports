# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/tti
    REF 03734c54a51b6372ac3296d2fe5103b7360bcd3f
    SHA512 9e9ba7d9a585469acf905fb567c3ed41a196430ae6fd505b9bf8088257763e525b242e08b1d8cb30450bf41f02cbf51ff6c319edfbbfdd3c02e2621e1718d564
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})