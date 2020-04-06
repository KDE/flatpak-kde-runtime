kind: qmake
description: json2bst conversion of qt5/qtnetworkauth

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt5NetworkAuth.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qtnetworkauth-everywhere-src-5.14.1.tar.xz
  ref: e7f9705d014056a0d8a9751e7ad4b472f1184b8ef822124f0363753730536ae0
