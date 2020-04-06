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
  url: git://anongit.kde.org/sonnet.git
  track: v5.66.0
  ref: 77746a7f719a2789c8cba556cc159fdb6dbc2dae
