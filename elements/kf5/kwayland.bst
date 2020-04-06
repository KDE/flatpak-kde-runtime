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
  url: git://anongit.kde.org/kwayland.git
  track: v5.66.0
  ref: a1c9fc8913aab46db950034748963311ab311474
