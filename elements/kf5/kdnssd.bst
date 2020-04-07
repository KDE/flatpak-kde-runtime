kind: cmake
description: KDNSSD

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/avahi.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5DNSSD.so'

sources:
- kind: git
  url: git://anongit.kde.org/kdnssd.git
  track: v5.67.0
  ref: 59d79101dedacbd73392c8b8c7241c985b884505
