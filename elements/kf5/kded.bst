kind: cmake
description: KDED

depends:
- kf5/kservice.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kdoctools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kded.git
  track: v5.67.0
  ref: 8c847233344d572c9ee5c501d0e9a7a019ac8553
