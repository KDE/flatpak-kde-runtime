kind: cmake
description: KDesignerPlugin

depends:
- kf5/kcoreaddons.bst
- kf5/kconfig.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst
- kf5/kdoctools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kdesignerplugin.git
  track: v5.67.0
  ref: a2866d98e0e900c5bdff29635360cb7d57654a31
