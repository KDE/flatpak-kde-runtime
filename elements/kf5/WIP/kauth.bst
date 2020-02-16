kind: cmake
description: KAuth

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kf5/extra-cmake-modules.bst
- kf5/kcoreaddons.bst
- qt5/qtbase.bst
- qt5/qttools.bst


sources:
- kind: git
  url: git://anongit.kde.org/kauth.git
  track: v5.66.0
  ref: 8977c4e6c6f1e90631f097c30099e2aab77d73b1
