kind: cmake
description: KGuiAddons

depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst

sources:
- kind: git
  url: git://anongit.kde.org/kguiaddons.git
  track: v5.66.0
  ref: a7c9b1c729c299ca301fe15960f70d36ebb7cc53
