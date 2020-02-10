kind: qmake
description: json2bst conversion of qt5/qtquickcontrols

depends:
- qt5/qtbase.bst
- qt5/qtdeclarative.bst

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.0/submodules/qtquickcontrols-everywhere-src-5.14.0.tar.xz
  ref: 6dd477bcb36a94ab417faab5e607f7a07c217c4ca3f751d8d76d475ab0f3558e
