kind: qmake
description: json2bst conversion of qt5/qtxmlpatterns

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt5XmlPatterns.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qtxmlpatterns-everywhere-src-5.14.1.tar.xz
  ref: fb993a112e591c84ea159a752a4026031a212a7af6f31a1b288552c924c18224
