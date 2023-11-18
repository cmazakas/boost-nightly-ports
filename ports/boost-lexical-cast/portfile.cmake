# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/lexical_cast
    REF boost-1.84.0.beta1
    SHA512 e03384fa290787f37ae1691a758e4f82e3c196288c153afe96b01079dd18f1efc63549cf4cd47ceef24b9796b203cfda614bd8d7a74c013ee558b7fe41df16be
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
