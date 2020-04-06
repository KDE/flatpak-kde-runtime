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
  url: git://anongit.kde.org/kemoticons.git
  track: v5.66.0
  ref: 927769bcc9a952a590edcf15333b77b8cc6322fc
