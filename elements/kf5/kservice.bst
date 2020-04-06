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
  url: git://anongit.kde.org/kservice.git
  track: v5.66.0
  ref: 43f26b6d82a1a06a02366346835cf7c0a7d6b2b3
