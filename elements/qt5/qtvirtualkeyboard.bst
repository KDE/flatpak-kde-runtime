kind: qmake
description: json2bst conversion of qt5/virtualkeyboard

depends:
- qt5/qtdeclarative.bst
- qt5/qtsvg.bst

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qtvirtualkeyboard-everywhere-src-5.14.1.tar.xz
  ref: 277baaf6043328d06585c7a9046461308aa7602b21f531bcda12e6df5bce5295
