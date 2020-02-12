kind: cmake
description: KCoreAddons

depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kcoreaddons.git
  track: v5.66.0
  ref: e397c837fd9f1794656d5632333e21669b3c69cf
