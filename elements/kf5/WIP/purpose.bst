kind: cmake
description: Purpose

#depends:
#- qt5/qtbase.bst
#- qt5/qtdeclarative.bst
#- kf5/kcoreaddons.bst
#- kf5/ki18n.bst
#- kf5/kconfig.bst
#- kf5/kio.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst

sources:
- kind: git
  url: https://anongit.kde.org/purpose.git
  track: v5.66.0
  ref: 351070ce59828bc866233685afa07f3164c3fd8a
