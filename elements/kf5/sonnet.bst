kind: cmake
description: Sonnet

runtime-depends:
- qt5/qtbase.bst

depends:
- freedesktop-sdk.bst:components/aspell.bst
- freedesktop-sdk.bst:components/hunspell.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5SonnetCore.so'
        - '%{libdir}/libKF5SonnetUi.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/sonnet.git
  track: v5.67.0
  ref: 88d81e8205724b9ae22f697eb3fd111c6518de89
