kind: cmake
description: frameworkintegration

depends:
- kf5/knewstuff.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kpackage.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Style.so'

sources:
- kind: git
  url: git://anongit.kde.org/frameworkintegration.git
  track: v5.67.0
  ref: 37bccb2811095f7afe3a033eb24d4f065eb553b9
