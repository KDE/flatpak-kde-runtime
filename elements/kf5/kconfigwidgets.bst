kind: cmake
description: KConfigWidgets

depends:
- kf5/kauth.bst
- kf5/kcodecs.bst
- kf5/kconfig.bst
- kf5/kguiaddons.bst
- kf5/ki18n.bst
- kf5/kwidgetsaddons.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kdoctools.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5ConfigWidgets.so'

sources:
- kind: git
  url: git://anongit.kde.org/kconfigwidgets.git
  track: v5.67.0
  ref: e78580309000c5014ef785056873c649084a0408
