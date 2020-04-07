kind: cmake
description: KCompletion

depends:
- kf5/kconfig.bst
- kf5/kwidgetsaddons.bst

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
        - '%{libdir}/libKF5Completion.so'

sources:
- kind: git
  url: git://anongit.kde.org/kcompletion.git
  track: v5.67.0
  ref: c5dd972ffebac29fcb13ba92df9b38713df40848
