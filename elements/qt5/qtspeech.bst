kind: qmake
description: json2bst conversion of qt5/qtspeech

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt5TextToSpeech.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qtspeech-everywhere-src-5.14.1.tar.xz
  ref: abd9a1863a64de0a148ae37e5fdecde7fd486348f7b26c054008f8506223e425
