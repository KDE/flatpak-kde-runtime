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
  track: v5.66.0
  ref: e397c837fd9f1794656d5632333e21669b3c69cf
