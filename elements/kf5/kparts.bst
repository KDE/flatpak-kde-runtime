kind: cmake
description: KParts

depends:
- kf5/kio.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kparts.git
  track: v5.66.0
  ref: 277eeadb11dca6f0e49705d00be87d8918b04169
