kind: cmake
description: Phonon

depends:
- qt5/qttools.bst

build-depends:
- kf5/extra-cmake-modules.bst

sources:
- kind: git
  url: git://anongit.kde.org/phonon.git
  track: v4.11.1
  ref: 70cd5ca9d9fadb7e458e5f44d68187f7f6fb0f61
