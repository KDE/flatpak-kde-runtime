kind: cmake
description: KArchive

depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF
    -DCMAKE_DISABLE_FIND_PACKAGE_Qt5Test=TRUE

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Archive.so'

sources:
- kind: git
  url: git://anongit.kde.org/karchive.git
  track: v5.66.0
  ref: 2a08dc1a909e969b70ba462544f468509e8f3f5a
