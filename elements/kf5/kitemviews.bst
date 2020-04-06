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
  url: git://anongit.kde.org/kitemviews.git
  track: v5.66.0
  ref: 045b92dac73d2eb8d88c970993bebe7dce0038e5
