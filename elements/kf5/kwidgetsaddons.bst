kind: cmake
description: KWidgetsAddons

depends:
- qt5/qtbase.bst

build-depends:
- freedesktop-sdk.bst:components/python3.bst
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kwidgetsaddons.git
  track: v5.66.0
  ref: a8a1a07fdf0b857384fed7d160c5c4f503a98c30
