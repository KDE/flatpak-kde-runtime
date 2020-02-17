kind: cmake
kind: cmake
description: KDESu

depends:
- qt5/qtbase.bst
- kf5/kcoreaddons.bst
- kf5/ki18n.bst
- kf5/kservice.bst
- kf5/kpty.bst
- filename: base/gettext.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/kdesu
  track: v5.51.0
