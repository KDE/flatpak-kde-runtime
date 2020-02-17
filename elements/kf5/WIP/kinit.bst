kind: cmake
description: KInit

#depends:
#- qt5/qtbase.bst
#- kf5/kio.bst
#- kf5/ki18n.bst
#- kf5/kwindowsystem.bst
#- kf5/kcrash.bst
#- kf5/kconfig.bst
#- filename: base/libxslt.bst
#  junction: freedesktop-sdk.bst
#  type: build
#- filename: base/gettext.bst
#  junction: freedesktop-sdk.bst
#  type: build
#- kf5/karchive.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kservice.bst

sources:
- kind: git
  url: git://anongit.kde.org/kinit.git
  track: v5.66.0
  ref: 05902af64d143a21484e18df1c0fe81aff77626b
