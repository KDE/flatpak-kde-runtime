kind: qmake
description: json2bst conversion of qt5/qtserialport

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt5SerialPort.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qtserialport-everywhere-src-5.14.1.tar.xz
  ref: ac7e51e99294998fae8bb3e2feebbd1820ecd774eb9ad8e7ea507f5bd06dcd6f
