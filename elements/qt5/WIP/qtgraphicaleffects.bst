kind: qmake
description: json2bst conversion of qt5/qtgraphicaleffects
depends:

- qt5/qtbase.bst
- qt5/qtdeclarative.bst

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.0/submodules/qtgraphicaleffects-everywhere-src-5.14.0.tar.xz
  ref: d931637d97cbb0e57bf2d78bf0eb06494f21a05d2e6a17e7c4f4f2a2fabc23cd
