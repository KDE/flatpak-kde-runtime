kind: cmake
description: calendarcore

depends:
- libical.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: https://anongit.kde.org/kcalendarcore.git
  track: v5.66.0
  ref: c22c63a0f45049454b7d73431a13df715f11b4eb
