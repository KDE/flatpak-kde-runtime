kind: cmake
description: Attica

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
        - '%{libdir}/libKF5Attica.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/attica.git
  track: v5.67.0
  ref: 1894ffeff9bb68f4a51d35fd95c2a39d57e7b6e2
