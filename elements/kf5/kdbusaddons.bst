kind: cmake
description: KDBusAddons

depends:
- qt5/qtx11extras.bst

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
        - '%{libdir}/libKF5DBusAddons.so'

sources:
- kind: git
  url: git://anongit.kde.org/kdbusaddons
  track: v5.67.0
  ref: acbce40246938a395b3b2a3b4bff6637fd3514bc
