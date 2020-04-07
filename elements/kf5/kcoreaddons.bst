kind: cmake
description: KCoreAddons

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5CoreAddons.so'

sources:
- kind: git
  url: git://anongit.kde.org/kcoreaddons.git
  track: v5.67.0
  ref: f2bd59b5403f42a8e59754b2d4c0f7c0034df562
