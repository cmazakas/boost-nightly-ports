# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/multi_array
    REF 0c5348bef71b890c4bd06eff1ee5ebda69e7b27a
    SHA512 4ac7debeecfa0c4d6287d837721ad6123bb2010a49a4d2e74aa6737c0df6593bbbae41273332bf15b683996a58e98ea11a4964c668039ce357f937630adaf9ed
    HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})