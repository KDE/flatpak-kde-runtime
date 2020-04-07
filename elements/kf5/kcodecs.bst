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

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Codecs.so'

sources:
- kind: git
  url: git://anongit.kde.org/kcodecs.git
  track: v5.67.0
  ref: 01a1a577cc4171082ecf725bd6ad3f0490fa0acf
