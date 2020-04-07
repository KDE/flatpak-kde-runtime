kind: cmake
description: KWindowSystem

depends:
- qt5/qtx11extras.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst

build-depends:
- kf5/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/xcb-util-wm.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5WindowSystem.so'

sources:
- kind: git
  url: git://anongit.kde.org/kwindowsystem.git
  track: v5.67.0
  ref: 417a1dfd5f7e9d352baf086fd42f99118c4f59ac
