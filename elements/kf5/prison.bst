kind: cmake
description: Prison

depends:
- qt5/qtdeclarative.bst
- libdmtx.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qrencode.bst

environment:
  CFLAGS: -fPIC

variables:
  cmake-local: >
    -DBUILD_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Prison.so'

sources:
- kind: git
  url: https://anongit.kde.org/prison.git
  track: v5.67.0
  ref: 20f2f59f720be66901336db8977bf3b6330dd56d
