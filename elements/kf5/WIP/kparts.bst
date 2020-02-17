kind: cmake
description: KParts

#depends:
#- qt5/qtbase.bst
#- kf5/kconfig.bst
#- kf5/kcoreaddons.bst
#- kf5/ki18n.bst
#- kf5/kio.bst
#- kf5/kjobwidgets.bst
#- kf5/kservice.bst
#- kf5/ktextwidgets.bst
#- kf5/kwidgetsaddons.bst
#- kf5/kxmlgui.bst
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
  url: git://anongit.kde.org/kparts.git
  track: v5.66.0
  ref: 277eeadb11dca6f0e49705d00be87d8918b04169
