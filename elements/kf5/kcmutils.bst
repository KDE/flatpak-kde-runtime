kind: cmake
description: KCMUtils

depends:
- kf5/kdeclarative.bst

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
        - '%{libdir}/libKF5KCMUtils.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kcmutils.git
  track: v5.67.0
  ref: 39bb66c304017a0ce394e7cb9cef56bcf144f952
