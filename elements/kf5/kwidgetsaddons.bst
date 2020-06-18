kind: cmake
description: KWidgetsAddons

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
        - '%{libdir}/libKF5WidgetsAddons.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kwidgetsaddons.git
  track: v5.67.0
  ref: bc55252bab27660151966d23094e7c64815bbf86
