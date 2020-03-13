kind: cmake
description: KIdleTime

depends:
- qt5/qtx11extras.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kidletime.git
  track: v5.66.0
  ref: 7c50cbb83efef8b64f05a214615facef7d1d4b82
