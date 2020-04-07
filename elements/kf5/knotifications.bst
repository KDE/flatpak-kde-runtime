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

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Notifications.so'

sources:
- kind: git
  url: git://anongit.kde.org/knotifications.git
  track: v5.67.0
  ref: d3c2cfe91b5b3197c2086d9ee1a7dc41dbce86fd
