kind: cmake
description: KGlobalAccel

depends:
- kf5/kconfig.bst
- kf5/kcrash.bst
- kf5/kdbusaddons.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5GlobalAccel.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kglobalaccel.git
  track: v5.67.0
  ref: f41e94c2179ab31511efbf16170678c9727dd9bd
