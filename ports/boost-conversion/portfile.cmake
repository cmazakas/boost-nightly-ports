# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/conversion
    REF 5cf5f78376c8562c168e322ba64b5a94c1f29a6c
    SHA512 4ad39edf3c9e64d360370c45aba77df9c9c6a92f1ae452a829a3cb3cfc538a93fd1ea04a67676ccfbc09835416d0ed54db891166fb579fa216f15f86834f5fe9
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
