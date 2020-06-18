kind: cmake
description: KNotifyConfig

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
        - '%{libdir}/libKF5NotifyConfig.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/knotifyconfig.git
  track: v5.67.0
  ref: 1b9d44a0bcff6ddc31d6d21186f4c7fea1170e43
