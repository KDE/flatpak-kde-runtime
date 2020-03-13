kind: cmake
description: KNotifyConfig

depends:
- kf5/kio.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/knotifyconfig.git
  track: v5.66.0
  ref: f9f571262d26e48636d61ec043231535cf08593f
