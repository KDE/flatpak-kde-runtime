kind: cmake
description: frameworkintegration

depends:
- kf5/knewstuff.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kpackage.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Style.so'

sources:
- kind: git
  url: git://anongit.kde.org/frameworkintegration.git
  track: v5.66.0
  ref: d61f863712c96e22c1a921d7dba00a98823b5803
