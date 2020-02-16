kind: cmake
description: KCompletion

depends:
- qt5/qtbase.bst
- kf5/kwidgetsaddons.bst
- kf5/kconfig.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kcompletion.git
  track: v5.66.0
  ref: 19ce74155a025c34b848c65f888dc7b7e27bb624
