kind: cmake
description: KParts

depends:
- kf5/kio.bst

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
        - '%{libdir}/libKF5Parts.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kparts.git
  track: v5.67.0
  ref: 11966f7253553fc582701643114a066a42eee645
