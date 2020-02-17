kind: cmake
description: KTextWidgets

#depends:
#- qt5/qtbase.bst
#- kf5/kauth.bst
#- kf5/kcodecs.bst
#- kf5/kcompletion.bst
#- kf5/kcoreaddons.bst
#- kf5/ki18n.bst
#- kf5/kwindowsystem.bst
#- kf5/sonnet.bst
#
#build-depends:
#- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
#- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
#- kf5/extra-cmake-modules.bst
#- kf5/kguiaddons.bst
#- qt5/qttools.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kconfigwidgets.bst

sources:
- kind: git
  url: git://anongit.kde.org/ktextwidgets.git
  track: v5.66.0
  ref: a12ee23117e92014fca6b0b024bf5ddb28d15557
