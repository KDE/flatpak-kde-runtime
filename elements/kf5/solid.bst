kind: cmake
description: Solid

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Solid.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/solid.git
  track: v5.67.0
  ref: 74c37ea0818463575b1257898fece080abc857a1
