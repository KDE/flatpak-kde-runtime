kind: cmake
description: KEmoticons

depends:
- kf5/karchive.bst
- kf5/kservice.bst

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
        - '%{libdir}/libKF5Emoticons.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kemoticons.git
  track: v5.67.0
  ref: 642cd19ea43db66eeffc8c549643ca4b30fc5f3e
