kind: cmake
description: fcitx-platforminputcontext

depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_LIBRARY=OFF

sources:
- kind: git_tag
  url: https://github.com/fcitx/fcitx-qt5
  track: 1.2.4
  ref: 1.2.4-0-gf7a5b3484bce1da4b54b6eb0cb5254126e985f2d
