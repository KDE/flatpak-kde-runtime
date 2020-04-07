kind: cmake
description: kfilemetadata

depends:
- kf5/karchive.bst
- kf5/kcoreaddons.bst
- kf5/ki18n.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst
- kf5/kconfig.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5FileMetaData.so'

sources:
- kind: git
  url: git://anongit.kde.org/kfilemetadata.git
  track: v5.67.0
  ref: a1c9341a538cf8ef442ffbf0db29e8ab189c387d
