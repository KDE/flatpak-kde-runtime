kind: cmake
description: Purpose

depends:
- kf5/kio.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kirigami.bst

variables:
  cmake-local: >
    -DBUILD_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Purpose.so'
        - '%{libdir}/libKF5PurposeWidgets.so'

sources:
- kind: git
  url: https://anongit.kde.org/purpose.git
  track: v5.66.0
  ref: 351070ce59828bc866233685afa07f3164c3fd8a
