kind: cmake
description: calendarcore

depends:
- libical.bst

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
        - '%{libdir}/libKF5CalendarCore.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kcalendarcore.git
  track: v5.67.0
  ref: 36a2b64ada45e2c8d1064187832273e71408b5ae
