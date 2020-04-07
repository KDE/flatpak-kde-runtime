kind: cmake
description: KNewStuff

runtime-depends:
- kf5/kirigami.bst

depends:
- kf5/kio.bst

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
        - '%{libdir}/libKF5NewStuffCore.so'
        - '%{libdir}/libKF5NewStuff.so'

sources:
- kind: git
  url: git://anongit.kde.org/knewstuff.git
  track: v5.67.0
  ref: cef83206c1379eceee71759004516ad91044a7c0
