kind: cmake
description: Purpose

depends:
- kf5/kio.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kirigami.bst

variables:
  cmake-local: >
    -DBUILD_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Purpose.so'
        - '%{libdir}/libKF5PurposeWidgets.so'

sources:
- kind: git
  url: https://anongit.kde.org/purpose.git
  track: v5.67.0
  ref: 091a3ed453cdeac7af911902bc09c432db973b64
