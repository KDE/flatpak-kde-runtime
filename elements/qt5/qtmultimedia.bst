kind: qmake
description: json2bst conversion of qt5/qtmultimedia

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt5Multimedia.so'
        - '%{libdir}/libQt5MultimediaWidgets.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qtmultimedia-everywhere-src-5.14.1.tar.xz
  ref: c458121c8db7ff77eefe643a7c9847ff324647f2603bb5664bcafa6435edeae7
