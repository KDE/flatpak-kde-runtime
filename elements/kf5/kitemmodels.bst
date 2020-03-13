kind: cmake
description: KItemModels

depends:
- qt5/qtdeclarative.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kitemmodels.git
  track: v5.66.0
  ref: 699ecdfdef31fdebe40d0d72ec84c53104c2a2d2
