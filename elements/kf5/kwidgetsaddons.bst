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
  url: git://anongit.kde.org/kwidgetsaddons.git
  track: v5.66.0
  ref: a8a1a07fdf0b857384fed7d160c5c4f503a98c30
