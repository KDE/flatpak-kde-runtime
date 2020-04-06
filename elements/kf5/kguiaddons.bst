kind: cmake
description: KGuiAddons

depends:
- qt5/qtx11extras.bst

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
        - '%{libdir}/libKF5GuiAddons.so'

sources:
- kind: git
  url: git://anongit.kde.org/kguiaddons.git
  track: v5.66.0
  ref: a7c9b1c729c299ca301fe15960f70d36ebb7cc53
