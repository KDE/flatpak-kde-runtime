kind: cmake
description: KPackage

runtime-depends:
- kf5/karchive.bst

depends:
- kf5/kcoreaddons.bst
- kf5/ki18n.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kdoctools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Package.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kpackage.git
  track: v5.67.0
  ref: ca8edb443798e76ba7914b134c898b27710fa3d3
