kind: cmake
description: KTextWidgets


depends:
- kf5/kcompletion.bst
- kf5/kconfigwidgets.bst
- kf5/kwindowsystem.bst
- kf5/sonnet.bst
- qt5/qtspeech.bst

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
        - '%{libdir}/libKF5TextWidgets.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/ktextwidgets.git
  track: v5.67.0
  ref: e0167efe0d537f21217c11cb5458ff97d334c4db
