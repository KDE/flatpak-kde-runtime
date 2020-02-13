kind: cmake
kind: cmake
description: NetworkManagerQt

depends:
- qt5/qtbase.bst
- filename: base/networkmanager.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/networkmanager-qt
  track: v5.51.0
