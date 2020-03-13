kind: cmake
description: KAuth

depends:
- kf5/kcoreaddons.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kauth.git
  track: v5.66.0
  ref: 8977c4e6c6f1e90631f097c30099e2aab77d73b1
