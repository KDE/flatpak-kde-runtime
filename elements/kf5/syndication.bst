kind: cmake
description: Syndication

depends:
- kf5/kcodecs.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DBUILD_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Syndication.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/syndication.git
  track: v5.67.0
  ref: fcabfcbebf14f643772dcc33931b27fa53cb81b6
