kind: cmake
description: Phonon

depends:
- qt5/qttools.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF
    -DPHONON_BUILD_PHONON4QT5=ON

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libphonon4qt5experimental.so'
        - '%{libdir}/libphonon4qt5.so'
        - '%{datadir}/phonon4qt5/buildsystem/FindPhononInternal.cmake'

sources:
- kind: git
  url: git://anongit.kde.org/phonon.git
  track: v4.11.1
  ref: 70cd5ca9d9fadb7e458e5f44d68187f7f6fb0f61
