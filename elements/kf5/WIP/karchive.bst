kind: cmake
description: KArchive

depends:
- qt5/qtbase.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kf5/extra-cmake-modules.bst

sources:
- kind: git
  url: git://anongit.kde.org/karchive.git
  track: v5.66.0
  ref: 2a08dc1a909e969b70ba462544f468509e8f3f5a
