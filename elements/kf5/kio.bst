kind: cmake
description: KIO

depends:
- kf5/kbookmarks.bst
- kf5/kdoctools.bst
- kf5/kjobwidgets.bst
- kf5/ktextwidgets.bst
- kf5/kwallet.bst
- kf5/solid.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kio.git
  track: v5.66.0
  ref: 9b8f41f87a9b5d1460a5f31a1b790a984f164ed3
