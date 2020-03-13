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

sources:
- kind: git
  url: git://anongit.kde.org/kactivities.git
  track: v5.66.0
  ref: 4c453c3deb0ee6de96f425fedfb0fcdc8a7f565e
