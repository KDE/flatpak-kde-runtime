kind: cmake
description: Prison

depends:
- qt5/qtdeclarative.bst
- libdmtx.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qrencode.bst

environment:
  CFLAGS: -fPIC

variables:
  cmake-local: >
    -DBUILD_TESTING=OFF

sources:
- kind: git
  url: https://anongit.kde.org/prison.git
  track: v5.66.0
  ref: 6cfb5230f8c562afdfbb127a0a08b610be49beea
