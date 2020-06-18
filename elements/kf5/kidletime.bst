kind: cmake
description: KIdleTime

depends:
- qt5/qtx11extras.bst

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
        - '%{libdir}/libKF5IdleTime.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kidletime.git
  track: v5.67.0
  ref: 98d3412484aa06b1302f54c72b27fffc06b73219
