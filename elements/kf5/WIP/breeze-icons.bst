kind: cmake
description: Breeze Icons

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- kf5/extra-cmake-modules.bst
- qt5/qtbase.bst

sources:
- kind: git
  url: git://anongit.kde.org/breeze-icons.git
  track: v5.66.0
  ref: 0ffead71035fdd6098eee43bd71a80598fd6d3a1
