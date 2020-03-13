kind: cmake
description: Ki18n

depends:
- qt5/qtdeclarative.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/ki18n.git
  track: v5.66.0
  ref: 7b025c8d176e0088d4e18bf9daaec47ac4be3131
