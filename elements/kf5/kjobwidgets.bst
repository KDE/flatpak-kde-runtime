kind: cmake
description: KJobWidgets

depends:
- kf5/kcoreaddons.bst
- kf5/kwidgetsaddons.bst
- qt5/qtx11extras.bst

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
        - '%{libdir}/libKF5JobWidgets.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kjobwidgets.git
  track: v5.67.0
  ref: c0294b2a25fbc4845cd287aa45765d80cede7e7a
