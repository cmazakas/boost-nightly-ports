# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/logic
    REF boost-1.84.0.beta1
    SHA512 6f803b1d98538021aeef602e02b4595cdeec5881895772e577b2b6684e35ca3c91eb20bc172d9a2798259847f89bcc6399e59fc986e48236d4c5f4e1ed483932
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
