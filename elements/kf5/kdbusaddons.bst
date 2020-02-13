kind: cmake
description: KDBusAddons

depends:
- qt5/qtx11extras.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kdbusaddons
  track: v5.66.0
  ref: 2087d66b0a745f6c5ccb07ad195ca0e992c21467
