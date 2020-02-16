kind: cmake
description: Syndication

#depends:
#- qt5/qtbase.bst
#- kf5/kcodecs.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst

sources:
- kind: git
  url: git://anongit.kde.org/syndication.git
  track: v5.66.0
  ref: 06eafee19f1eeffcff2a5db5e461b902e8b34dd1
