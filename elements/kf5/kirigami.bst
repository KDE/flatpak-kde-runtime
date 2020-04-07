kind: cmake
description: Kirigami

depends:
- qt5/qtquickcontrols2.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qtsvg.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Kirigami2.so'

sources:
- kind: git
  url: git://anongit.kde.org/kirigami.git
  track: v5.67.0
  ref: 4fb0e29442f53466581c50427a7f3e62e5d31a62
