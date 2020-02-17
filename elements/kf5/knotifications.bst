kind: cmake
description: KNotifications

depends:
- kf5/kcodecs.bst
- kf5/kconfig.bst
- kf5/kcoreaddons.bst
- kf5/kwindowsystem.bst
- kf5/phonon.bst
- qt5/qtspeech.bst
- libdbusmenuqt.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/knotifications.git
  track: v5.66.0
  ref: eff2ff0d4c2882989c6b121b618d5503857780ea
