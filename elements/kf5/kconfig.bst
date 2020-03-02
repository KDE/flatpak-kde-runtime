kind: cmake
description: KConfig

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kconfig.git
  track: v5.66.0
  ref: b2cfa6a0de06e0ef61ff6752c4ef23890892ffed
