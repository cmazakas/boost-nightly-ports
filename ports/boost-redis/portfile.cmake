# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/redis
    REF boost-1.84.0.beta1
    SHA512 73056dc27e8d5fb297a7f4deb99437e85fa03e79a958238e12ce625aadc6f9a3eece9b3fa2db00cc9ca5ecf37f417e7b08a4ae84e33463747a42ac4f982e8ee6
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
