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
  url: git://anongit.kde.org/kdesignerplugin.git
  track: v5.66.0
  ref: c1361325808549c389f7760b57aa56117bd5b953
