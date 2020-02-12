kind: cmake
description: Extra

depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

variables:
  cmake-local: |
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/extra-cmake-modules.git
  track: v5.66.0
  ref: de934e322e6b8483058031736813682296b398de
