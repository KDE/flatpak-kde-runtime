kind: cmake
description: KService

depends:
- kf5/kconfig.bst
- kf5/kcrash.bst
- kf5/kdbusaddons.bst
- kf5/ki18n.bst

build-depends:
- kf5/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- kf5/kdoctools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Service.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kservice.git
  track: v5.67.0
  ref: 3b24c6d2dc4257968947f0560f9aa1f3d56aab3b
