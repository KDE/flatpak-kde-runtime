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
  url: https://invent.kde.org/frameworks/breeze-icons.git
  track: v5.67.0
  ref: 3c6b6d48b14364d950fc18a3103dbeb7281270bc
