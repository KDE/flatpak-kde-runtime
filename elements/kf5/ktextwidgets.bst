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

sources:
- kind: git
  url: git://anongit.kde.org/ktextwidgets.git
  track: v5.66.0
  ref: a12ee23117e92014fca6b0b024bf5ddb28d15557
