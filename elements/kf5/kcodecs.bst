kind: cmake
description: KCodecs

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/gperf.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kcodecs.git
  track: v5.66.0
  ref: bb372cbd49530c0e5c423a033bb7e616538af33c
