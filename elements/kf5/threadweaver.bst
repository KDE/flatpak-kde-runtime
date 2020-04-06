kind: cmake
description: ThreadWeaver

depends:
- qt5/qtbase.bst

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
        - '%{libdir}/libKF5ThreadWeaver.so'

sources:
- kind: git
  url: git://anongit.kde.org/threadweaver.git
  track: v5.66.0
  ref: 4b19316c0fdfff932554bd351a0f8a9a0ca3309d
