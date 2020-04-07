kind: cmake
description: KDeclarative

depends:
- kf5/kio.bst
- kf5/kpackage.bst

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
        - '%{libdir}/libKF5CalendarEvents.so'
        - '%{libdir}/libKF5Declarative.so'
        - '%{libdir}/libKF5QuickAddons.so'

sources:
- kind: git
  url: git://anongit.kde.org/kdeclarative.git
  track: v5.67.0
  ref: 446de451605076a33ab98b75458e34eadd00f9b9
