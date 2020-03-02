kind: cmake
description: qrencode (needed for prison)

depends:
- qt5/qtbase.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

environment:
  CFLAGS: -fPIC

sources:
- kind: tar
  url: https://fukuchi.org/works/qrencode/qrencode-4.0.2.tar.gz
  ref: dbabe79c07614625d1f74d8c0ae2ee5358c4e27eab8fd8fe31f9365f821a3b1d
