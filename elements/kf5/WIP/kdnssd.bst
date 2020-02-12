kind: cmake
description: KDNSSD

depends:
- qt5/qtbase.bst
- filename: base/avahi.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/kdnssd
  track: v5.51.0
