kind: cmake
description: KIconThemes

#build-depends:
#- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
#- kf5/extra-cmake-modules.bst
#- qt5/qttools.bst
#- qt5/qtsvg.bst
#- kf5/karchive.bst
#- kf5/kauth.bst
#- kf5/kcodecs.bst
#- kf5/ki18n.bst
#- kf5/kconfig.bst
#- kf5/kcoreaddons.bst
#- kf5/kguiaddons.bst
#- kf5/kwidgetsaddons.bst
#- kf5/kitemviews.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kconfigwidgets.bst

sources:
- kind: git
  url: git://anongit.kde.org/kiconthemes.git
  track: v5.66.0
  ref: 3b3e99bc9e2a5994f5a40519c727727beea0fefc
