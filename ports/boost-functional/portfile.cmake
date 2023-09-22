# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/functional
    REF 6a573e4b8333ee63ee62ce95558c3667348db233
    SHA512 23b1ee7ceb45599097a656dd3a30123868aae832576e6a69650061e058ab08c421358c2cac48b92db14ce9c8452ca7e6c0882553afbf897a83a68bc86058cbfa
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})