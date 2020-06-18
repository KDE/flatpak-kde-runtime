kind: cmake
description: KConfig

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
        - '%{libdir}/libKF5ConfigCore.so'
        - '%{libdir}/libKF5ConfigGui.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kconfig.git
  track: v5.67.0
  ref: 28bf85145845f6e350a83e080b43b4e83f0dffac
