kind: cmake
description: KWindowSystem

depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- freedesktop-sdk.bst:components/xcb-util-wm.bst
- qt5/qtx11extras.bst
- qt5/qttools.bst


sources:
- kind: git
  url: git://anongit.kde.org/kwindowsystem.git
  track: v5.66.0
  ref: 21278c9e519c2d2e38d68f5b3f3520c5ff70b7e1
