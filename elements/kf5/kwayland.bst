kind: cmake
description: KWayland

depends:
- qt5/qtbase.bst

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
        - '%{libdir}/libKF5WaylandClient.so'
        - '%{libdir}/libKF5WaylandServer.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kwayland.git
  track: v5.67.0
  ref: cce815dbbe491886c0139fdcd6df30d547b1263b
