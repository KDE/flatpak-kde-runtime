kind: cmake
description: KHolidays

depends:
- qt5/qtdeclarative.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Holidays.so'

sources:
- kind: git
  url: git://anongit.kde.org/kholidays.git
  track: v5.67.0
  ref: 572d3c8e3870664b7685f5b0afd6e264db9b3c5e
