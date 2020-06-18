kind: cmake
description: KPlotting

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
        - '%{libdir}/libKF5Plotting.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kplotting.git
  track: v5.67.0
  ref: 776e157c926211fd4827069e91244a1faed26898
