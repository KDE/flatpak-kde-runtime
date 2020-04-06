kind: cmake
description: KIconThemes

depends:
- kf5/karchive.bst
- kf5/kconfigwidgets.bst
- kf5/kitemviews.bst
- qt5/qtsvg.bst

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
        - '%{libdir}/libKF5IconThemes.so'

sources:
- kind: git
  url: git://anongit.kde.org/kiconthemes.git
  track: v5.66.0
  ref: 3b3e99bc9e2a5994f5a40519c727727beea0fefc
