kind: cmake
description: Ki18n

depends:
- qt5/qtdeclarative.bst

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
        - '%{libdir}/libKF5I18n.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/ki18n.git
  track: v5.67.0
  ref: 436fd2f6bd412f49fe80fd3cbae2e83b718dc599
