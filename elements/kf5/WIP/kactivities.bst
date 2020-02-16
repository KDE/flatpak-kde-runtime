kind: cmake
description: KActivities

depends:
- qt5/qtbase.bst
- qt5/qtdeclarative.bst
- kf5/kcoreaddons.bst
- kf5/kconfig.bst
- kf5/kwindowsystem.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- kf5/extra-cmake-modules.bst
- boost.bst
#- qt5/qttools.bst



sources:
- kind: git
  url: git://anongit.kde.org/kactivities.git
  track: v5.66.0
  ref: 4c453c3deb0ee6de96f425fedfb0fcdc8a7f565e
