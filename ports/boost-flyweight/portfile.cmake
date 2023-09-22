# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/flyweight
    REF e9f3a0a005eca8baa377f13423107b35985d9119
    SHA512 3b7a249493e0828c65321d268d2c8bd5ed0c99b0699f5e8dcf1b471c0cebf803216072d01147f3bc5bc7b4896290112ffad2be3598c74ca84d9fbea8c1e357b1
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})