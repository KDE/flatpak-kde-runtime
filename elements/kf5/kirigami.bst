kind: cmake
description: Kirigami

depends:
- qt5/qtquickcontrols2.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qtsvg.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kirigami.git
  track: v5.66.0
  ref: 637ffb853454276a963751fe6796e3dea05debae
