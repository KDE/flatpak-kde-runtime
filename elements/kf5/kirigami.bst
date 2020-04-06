kind: cmake
description: Kirigami

depends:
- qt5/qtquickcontrols2.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qtsvg.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Kirigami2.so'

sources:
- kind: git
  url: git://anongit.kde.org/kirigami.git
  track: v5.66.0
  ref: 637ffb853454276a963751fe6796e3dea05debae
