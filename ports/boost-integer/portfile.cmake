# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/integer
    REF boost-1.84.0.beta1
    SHA512 30ec2f6e06e55daa94926e540a4452ac1a8ff812398dc87f6a5e1a8f13f55237049e895d24a728614e008f3bd0ce745e970cbb2fcdc0130fb127110c3964e697
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
