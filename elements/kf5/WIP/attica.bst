kind: cmake
description: Attica

depends:
- qt5/qtbase.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kf5/extra-cmake-modules.bst

sources:
- kind: git
  url: git://anongit.kde.org/attica.git
  track: v5.66.0
  ref: 7cf63923260eb1273e6acb8f1f982e9ba6bd4b64
