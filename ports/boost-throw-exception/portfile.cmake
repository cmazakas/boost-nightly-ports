# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/throw_exception
    REF boost-1.84.0.beta1
    SHA512 fd0bceec80e02087d0cc61af3d24b7904d46eb04650316f9dcc02462345bde050238b98b0c7db829b050e7a8f56862adc5d4f9018d071858fa726471d01fa848
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
