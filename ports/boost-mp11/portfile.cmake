# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/mp11
    REF boost-1.84.0.beta1
    SHA512 9a8231d3f7d6132f1b84a7800c8dfd5fc2539d7cd6eb5655a763817115d803597d072afb4997e91dff15f6070d5a86879656ce9cb3d89098b657ebb42e40c8f3
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
