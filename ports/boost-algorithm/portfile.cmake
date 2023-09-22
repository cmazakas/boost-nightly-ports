# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/algorithm
    REF faac048d59948b1990c0a8772a050d8e47279343
    SHA512 d6446a26e6479c68d511fd46dd90a63775de21e7f4e753096c2334b200bd99c78319812cb341153c9cf06115990ed81b2b4729984c383fa98c26c8d6f67f6201
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
