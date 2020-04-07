kind: cmake
description: KItemModels

depends:
- qt5/qtdeclarative.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5ItemModels.so'

sources:
- kind: git
  url: git://anongit.kde.org/kitemmodels.git
  track: v5.67.0
  ref: 8499737c58b7dc8bee322ac1df8e162d9bef5e4f
