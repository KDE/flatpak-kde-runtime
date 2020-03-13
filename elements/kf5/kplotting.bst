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

sources:
- kind: git
  url: git://anongit.kde.org/kplotting.git
  track: v5.66.0
  ref: 25e888efc42e58e10714c2e555539eb599986654
