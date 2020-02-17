kind: cmake
description: KConfigWidgets

runtime-depends:
- kf5/kconfig.bst

depends:
- kf5/kauth.bst
- kf5/kcodecs.bst
- kf5/kconfig.bst
- kf5/kguiaddons.bst
- kf5/ki18n.bst
- kf5/kwidgetsaddons.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kdoctools.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kconfigwidgets.git
  track: v5.66.0
  ref: ed2bfad1f51dba38a425b1f214f5f3d19a684e2d
