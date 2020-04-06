kind: qmake
description: json2bst conversion of qt5/qtlocation

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt5Positioning.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qtlocation-everywhere-src-5.14.1.tar.xz
  ref: a0dd1712a5b7a0425b57d17318294b6f7e968c4b81d52048696d029b04d2f12f
