kind: cmake
description: Breeze Icons

depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/breeze-icons.git
  track: v5.66.0
  ref: 0ffead71035fdd6098eee43bd71a80598fd6d3a1
