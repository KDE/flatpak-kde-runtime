kind: cmake
description: KWallet

depends:
- kf5/kconfigwidgets.bst
- kf5/knotifications.bst
- kf5/kservice.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kdoctools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Wallet.so'
        - '%{libdir}/libkwalletbackend5.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kwallet.git
  track: v5.67.0
  ref: 6f0fda6dc0e85341035443540851483c975f39a7
