kind: cmake
kind: cmake
description: ModemManagerQt

depends:
- qt5/qtbase.bst
- filename: base/modemmanager.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/modemmanager-qt
  track: v5.51.0
