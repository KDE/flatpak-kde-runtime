kind: qmake
description: json2bst conversion of qt5/qt3d

depends:
- qt5/qtbase.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libQt53DAnimation.so'
        - '%{libdir}/libQt53DCore.so'
        - '%{libdir}/libQt53DExtras.so'
        - '%{libdir}/libQt53DInput.so'
        - '%{libdir}/libQt53DLogic.so'
        - '%{libdir}/libQt53DRender.so'

sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.1/submodules/qt3d-everywhere-src-5.14.1.tar.xz
  ref: 86f425e8bdf55b7b3f6a8384c2b9cffee30407fcf87ece0db060fdfb797a0774
