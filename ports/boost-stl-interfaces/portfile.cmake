# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/stl_interfaces
    REF 510eb431fbf64e98b6870468aa523dd4c6a6c69a
    SHA512 d7d19871799f955f858ed71f9760ae90fda19ba1ab9cc3a8e7ec8eee33b8780f6480dd844b684c9ccc5102e6ae02c1e54369ca8701905bac8d07897745bddf27
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})