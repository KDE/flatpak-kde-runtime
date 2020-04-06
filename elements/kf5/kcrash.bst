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
  track: v5.66.0
  ref: 9869717026051af7975819a45334521feb950f7e
