kind: cmake
description: KConfigWidgets

#build-depends:
#- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
#- qt5/qttools.bst
#- kf5/extra-cmake-modules.bst
#- kf5/kauth.bst
#- kf5/kcoreaddons.bst
#- kf5/kcodecs.bst
#- kf5/kconfig.bst
#- kf5/kguiaddons.bst
#- kf5/ki18n.bst
#- kf5/kwidgetsaddons.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst

sources:
- kind: git
  url: git://anongit.kde.org/kconfigwidgets.git
  track: v5.66.0
  ref: ed2bfad1f51dba38a425b1f214f5f3d19a684e2d
