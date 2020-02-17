kind: cmake
description: KNewStuff

#depends:
#- qt5/qtbase.bst
#- qt5/qtdeclarative.bst
#- kf5/karchive.bst
#- kf5/kcompletion.bst
#- kf5/kconfig.bst
#- kf5/kcoreaddons.bst
#- kf5/ki18n.bst
#- kf5/kio.bst
#- kf5/kitemviews.bst
#- kf5/kservice.bst
#- kf5/ktextwidgets.bst
#- kf5/kwidgetsaddons.bst
#- kf5/kxmlgui.bst
#- kf5/attica.bst
#- filename: base/gettext.bst
#  junction: freedesktop-sdk.bst
#  type: build
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kiconthemes.bst

sources:
- kind: git
  url: git://anongit.kde.org/knewstuff.git
  track: v5.66.0
  ref: c46fd6666a4cff3cabdb328266d0a94e73e74640
