kind: cmake
description: KPty

depends:
- kf5/ki18n.bst
- kf5/kcoreaddons.bst

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
        - '%{libdir}/libKF5Pty.so'

sources:
- kind: git
  url: git://anongit.kde.org/kpty.git
  track: v5.67.0
  ref: 5c700b3fd49ffeb02a3cfd479c7698bb9e2ed48c
