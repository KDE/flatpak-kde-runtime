kind: cmake
description: KCMUtils

depends:
- kf5/kdeclarative.bst

build-depends:
- kf5/extra-cmake-modules.bst

sources:
- kind: git
  url: git://anongit.kde.org/kcmutils.git
  track: v5.66.0
  ref: 15726aebc4af142d48794f0f718e3d5100499de1
