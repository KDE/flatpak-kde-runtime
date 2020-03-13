kind: cmake
description: KInit

depends:
- kf5/kio.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kinit.git
  track: v5.66.0
  ref: 05902af64d143a21484e18df1c0fe81aff77626b
