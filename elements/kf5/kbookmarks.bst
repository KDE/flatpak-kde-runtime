kind: cmake
description: KBookmarks

#depends:
#- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
#- qt5/qtsvg.bst
#- kf5/karchive.bst
#- kf5/kauth.bst
#- kf5/kconfig.bst
#- kf5/kcoreaddons.bst
#- kf5/kcodecs.bst
#- kf5/kglobalaccel.bst
#- kf5/kguiaddons.bst
#- kf5/ki18n.bst
#- kf5/kiconthemes.bst
#- kf5/kitemviews.bst
#- kf5/kwidgetsaddons.bst
#- kf5/kxmlgui.bst
#- kf5/kwindowsystem.bst
#

depends:
- kf5/kxmlgui.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst


#build-depends:
#- kf5/extra-cmake-modules.bst
#- qt5.bst
#- provisional-kf5-tier1.bst
#- provisional-kf5-tier2.bst
#- provisional-kf5-tier3.bst
#- kf5/kxmlgui.bst
#- kf5/qqc2-desktop-style.bst

sources:
- kind: git
  url: git://anongit.kde.org/kbookmarks.git
  track: v5.66.0
  ref: 6d0796473a58f3e76a0514cbc542e6e97349cd49
