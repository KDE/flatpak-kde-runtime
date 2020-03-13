kind: cmake
description: Breeze

depends:
- kf5/frameworkintegration.bst
- kf5/kcmutils.bst
- kf5/kwayland.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF
    -DWITH_DECORATIONS=OFF
    -DWITH_WALLPAPERS=OFF
    #    -DICAL_BUILD_DOCS=OFF

sources:
- kind: git
  url: git://anongit.kde.org/breeze.git
  track: Plasma/5.18
  ref: 659dfd1877deb32a2b5e2216ff08deebaee8d737
