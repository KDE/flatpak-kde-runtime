kind: cmake
description: KHolidays

depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qtdeclarative.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kholidays.git
  track: v5.66.0
  ref: d0c6837c5e9af05cb65d0ddfe746f88eef0ed5a9
