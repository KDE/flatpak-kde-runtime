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
  track: v5.67.0
  ref: 64fa524731bd2829a3f8f88219cbb8af3e0bbda1
