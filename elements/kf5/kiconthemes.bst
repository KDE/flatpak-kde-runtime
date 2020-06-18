kind: cmake
description: KIconThemes

depends:
- kf5/karchive.bst
- kf5/kconfigwidgets.bst
- kf5/kitemviews.bst
- qt5/qtsvg.bst

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
        - '%{libdir}/libKF5IconThemes.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kiconthemes.git
  track: v5.67.0
  ref: 4af6cd5de625ee431fc1228db5e6a53b19356805
