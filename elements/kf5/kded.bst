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
  track: v5.66.0
  ref: afb5bc8212af8187fafd56c2b54ed694c879e4cc
