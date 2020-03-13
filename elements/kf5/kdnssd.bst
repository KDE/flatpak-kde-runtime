kind: cmake
description: KDNSSD

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/avahi.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kdnssd.git
  track: v5.66.0
  ref: bd604feb1611c40f5b97baf881e682ed06f9ef83
