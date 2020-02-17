kind: cmake
description: Syndication

depends:
- kf5/kcodecs.bst

build-depends:
- kf5/extra-cmake-modules.bst

sources:
- kind: git
  url: git://anongit.kde.org/syndication.git
  track: v5.66.0
  ref: 06eafee19f1eeffcff2a5db5e461b902e8b34dd1
