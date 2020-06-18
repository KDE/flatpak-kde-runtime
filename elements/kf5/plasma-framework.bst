kind: cmake
description: Plasma Framework

depends:
- kf5/kdeclarative.bst
- kf5/kactivities.bst
- kf5/kwayland.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kirigami.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5PlasmaQuick.so'
        - '%{libdir}/libKF5Plasma.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/plasma-framework.git
  track: v5.67.0
  ref: 65fb00bd3f554950ac96d702cac0d34e444c0936
