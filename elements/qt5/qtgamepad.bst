kind: qmake
description: json2bst conversion of qt5/qtgamepad

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt5Gamepad.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qtgamepad-everywhere-src-5.14.1.tar.xz
  ref: 13277d7362ebe912b55e233674bc862e4b5342705c9207bd16c83f107d0e3499
