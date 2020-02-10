kind: qmake
description: json2bst conversion of qt5/qtquickcontrols2

depends:
- qt5/qtbase.bst
- qt5/qtdeclarative.bst

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.0/submodules/qtquickcontrols2-everywhere-src-5.14.0.tar.xz
  ref: 827bf86db44ce4f698f172378313db04e1cb81c593e9342bdd95bb1708f27911
