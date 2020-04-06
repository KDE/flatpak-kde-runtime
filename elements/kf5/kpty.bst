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
  track: v5.66.0
  ref: fe4ec984c5a4ba28b92725f80a6ffa95295b0425
