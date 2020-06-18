kind: cmake
description: KAuth

depends:
- kf5/kcoreaddons.bst

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
        - '%{libdir}/libKF5AuthCore.so'
        - '%{libdir}/libKF5Auth.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kauth.git
  track: v5.67.0
  ref: 1e85ecc5bb3b9e75b1d7d491f814505c03903c01
