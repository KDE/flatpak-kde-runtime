kind: cmake
description: KNotifications

#depends:
#- qt5/qtbase.bst
#- kf5/kwindowsystem.bst
#- kf5/kconfig.bst
#- kf5/kcodecs.bst
#- kf5/kcoreaddons.bst
#- kf5/phonon.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst

sources:
- kind: git
  url: git://anongit.kde.org/knotifications.git
  track: v5.66.0
  ref: eff2ff0d4c2882989c6b121b618d5503857780ea
