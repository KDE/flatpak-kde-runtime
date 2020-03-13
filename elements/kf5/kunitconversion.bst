kind: cmake
description: KUnitConversion

depends:
- kf5/ki18n.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kunitconversion.git
  track: v5.66.0
  ref: 9fa97a80319edf1033017926580eb3f8ad7c96aa
