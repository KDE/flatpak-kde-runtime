kind: cmake
description: KCMUtils

depends:
- kf5/kdeclarative.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5KCMUtils.so'

sources:
- kind: git
  url: git://anongit.kde.org/kcmutils.git
  track: v5.66.0
  ref: 15726aebc4af142d48794f0f718e3d5100499de1
