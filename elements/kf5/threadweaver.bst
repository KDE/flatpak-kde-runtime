kind: cmake
description: ThreadWeaver

depends:
- qt5/qtbase.bst

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
        - '%{libdir}/libKF5ThreadWeaver.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/threadweaver.git
  track: v5.67.0
  ref: 5904a808e20fba097184feeeb1e7f48362b75e38
