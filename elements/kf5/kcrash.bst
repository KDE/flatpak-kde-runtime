kind: cmake
description: KCrash

depends:
- kf5/kcoreaddons.bst
- kf5/kwindowsystem.bst

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
        - '%{libdir}/libKF5Crash.so'

sources:
- kind: git
  url: git://anongit.kde.org/kcrash.git
  track: v5.67.0
  ref: 69a1e69eed8a680fe533e53e37af273a5ee6b082
