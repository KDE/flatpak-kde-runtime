kind: cmake
description: KIO

depends:
- kf5/kbookmarks.bst
- kf5/kdoctools.bst
- kf5/kjobwidgets.bst
- kf5/ktextwidgets.bst
- kf5/kwallet.bst
- kf5/solid.bst

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
        - '%{libdir}/libKF5KIOCore.so'
        - '%{libdir}/libKF5KIOFileWidgets.so'
        - '%{libdir}/libKF5KIOGui.so'
        - '%{libdir}/libKF5KIONTLM.so'
        - '%{libdir}/libKF5KIOWidgets.so'

sources:
- kind: git
  url: git://anongit.kde.org/kio.git
  track: v5.67.0
  ref: 612c7d6229432db485ee66bdca5745dd4149d940
