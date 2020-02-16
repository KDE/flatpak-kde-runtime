kind: cmake
description: KFileMetaData

depends:
- qt5/qtbase.bst
- kf5/ki18n.bst
- filename: base/gettext.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/kfilemetadata
  track: v5.51.0
kind: cmake
