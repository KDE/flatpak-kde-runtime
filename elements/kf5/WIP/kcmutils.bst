kind: cmake
description: KCMUtils

#depends:
#- qt5/qtbase.bst
#- kf5/kitemviews.bst
#- kf5/kcoreaddons.bst
#- kf5/kiconthemes.bst
#- kf5/ki18n.bst
#- kf5/kxmlgui.bst
#- kf5/kdeclarative.bst
#- kf5/kpackage.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kconfigwidgets.bst
- kf5/WIP/kservice.bst

sources:
- kind: git
  url: git://anongit.kde.org/kcmutils.git
  track: v5.66.0
  ref: 15726aebc4af142d48794f0f718e3d5100499de1
