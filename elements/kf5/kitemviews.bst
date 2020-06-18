kind: cmake
description: KItemViews

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5ItemViews.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kitemviews.git
  track: v5.67.0
  ref: b2beb21e37b14d72e6bedd8d6a6e7eba146210e8
