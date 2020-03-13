kind: cmake
description: KGlobalAccel

depends:
- kf5/kconfig.bst
- kf5/kcrash.bst
- kf5/kdbusaddons.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kglobalaccel
  track: v5.66.0
  ref: 6f87e5eb35ab831aeeaad5f0d58ce46d28dd07d0
