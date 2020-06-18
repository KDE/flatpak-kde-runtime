kind: cmake
description: KInit

depends:
- kf5/kio.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kinit.git
  track: v5.67.0
  ref: 44d4a8d7a7b25e369fe60f10cd3265f4b86d9496
