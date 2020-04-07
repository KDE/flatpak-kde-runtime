kind: cmake
description: QQC2

depends:
- kf5/kirigami.bst
- kf5/kiconthemes.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/qqc2-desktop-style.git
  track: v5.67.0
  ref: 4f2d468c1829b7ef62a858d6f3ffb541db6ce7f1
