# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/assign
    REF ababd47970e8a5fa1bebc8ccad526c4f25bd867a
    SHA512 9619bbfb8a9293902ebc6db81c79816fcb57990063d4bf423b112f1cf0854f6d303b25847f0761905102891e77c9608bd7706e3c3b90959d64bfb2798e5d6559
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
