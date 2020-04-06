kind: qmake
description: json2bst conversion of qt5/qtscript

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt5Script.so'
        - '%{libdir}/libQt5ScriptTools.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qtscript-everywhere-src-5.14.1.tar.xz
  ref: d8071e665935f7f6733f5ef700054a0cbbf8b569e7900439b89d3301f70adadd
