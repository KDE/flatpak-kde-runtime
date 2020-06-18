kind: cmake
description: KActivities

depends:
- qt5/qtdeclarative.bst
- kf5/kconfig.bst
- kf5/kcoreaddons.bst

build-depends:
- kf5/extra-cmake-modules.bst
- boost.bst
- kf5/kwindowsystem.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF
    -DKACTIVITIES_LIBRARY_ONLY=ON

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Activities.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kactivities.git
  track: v5.67.0
  ref: f4651ec18e5ff1b52d42487ee837603028acfffa
