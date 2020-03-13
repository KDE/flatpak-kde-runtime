kind: cmake
description: KCompletion

depends:
- kf5/kconfig.bst
- kf5/kwidgetsaddons.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kcompletion.git
  track: v5.66.0
  ref: 19ce74155a025c34b848c65f888dc7b7e27bb624
