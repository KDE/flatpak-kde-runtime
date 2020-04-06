kind: qmake
description: json2bst conversion of qt5/qttools

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt5DesignerComponents.so'
        - '%{libdir}/libQt5Designer.so'
        - '%{libdir}/libQt5Help.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qttools-everywhere-src-5.14.1.tar.xz
  ref: 7f5e6370cf4ed59f2bdd6517870cdcb1df9a055bbd885d056d90938ab302c70c
