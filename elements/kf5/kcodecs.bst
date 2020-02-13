kind: cmake
description: KCodecs

depends:
- qt5/qtbase.bst

build-depends:
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/python3.bst
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kcodecs.git
  track: v5.66.0
  ref: bb372cbd49530c0e5c423a033bb7e616538af33c
