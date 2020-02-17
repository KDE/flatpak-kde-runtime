kind: cmake
description: KEmoticons

#depends:
#- qt5/qtbase.bst
#- kf5/karchive.bst
#- kf5/kcoreaddons.bst
#- kf5/kconfig.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kservice.bst

sources:
- kind: git
  url: git://anongit.kde.org/kemoticons.git
  track: v5.66.0
  ref: 927769bcc9a952a590edcf15333b77b8cc6322fc
