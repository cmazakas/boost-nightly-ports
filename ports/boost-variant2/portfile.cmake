# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/variant2
    REF a5cb0582d5669e86ee913f97c001677987023967
    SHA512 a5ca265070d172bf3a1bce2114b3955f441cea92886bcf5fd0a7e6f1b33a8b25e2a8064c40bc9996d81749ddd84b6fae0a7360bdc8c5392e1c96a5610938819b
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})