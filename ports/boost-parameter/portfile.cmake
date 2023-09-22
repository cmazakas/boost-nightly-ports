# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/parameter
    REF 6538609cf5e390b6e7cbcb73173d86d18af73281
    SHA512 151e554a0a2adba8f8d83c3be8e6e0c0d65378a0ad865f1d1414e6e85d4983ed24ee26b1de1dbe5e9cb919b531c8bc0f05cb6036503f6ff94ab399a6f39a8248
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
