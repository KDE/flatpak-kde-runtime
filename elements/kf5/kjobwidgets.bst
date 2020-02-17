kind: cmake
description: KJobWidgets

depends:
- kf5/kcoreaddons.bst
- kf5/kwidgetsaddons.bst
- qt5/qtx11extras.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst


sources:
- kind: git
  url: git://anongit.kde.org/kjobwidgets.git
  track: v5.66.0
  ref: 1261a8f328d49ba832273e97c41e5436f408a100
