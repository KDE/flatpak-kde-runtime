kind: cmake
description: KUnitConversion

depends:
- kf5/ki18n.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5UnitConversion.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kunitconversion.git
  track: v5.67.0
  ref: dbef9926cfa01260d09557ffb78dbb8f0d74b0d1
