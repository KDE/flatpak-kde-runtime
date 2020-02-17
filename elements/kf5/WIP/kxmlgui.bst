kind: cmake
description: KXmlGui

#build-depends:
#- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
#- kf5/extra-cmake-modules.bst
#- kf5/karchive.bst
#- qt5/qtbase.bst
#- qt5/qttools.bst
#- qt5/qtsvg.bst
#- kf5/kcoreaddons.bst
#- kf5/kitemviews.bst
#- kf5/kconfig.bst
#- kf5/ki18n.bst
#- kf5/kguiaddons.bst
#- kf5/ktextwidgets.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kconfigwidgets.bst
- kf5/WIP/kiconthemes.bst
- kf5/WIP/kglobalaccel.bst

sources:
- kind: git
  url: git://anongit.kde.org/kxmlgui.git
  track: v5.66.0
  ref: e93021b98a16c032fbbb8f0101327991b9e83dac
