kind: cmake
description: KXmlGui

depends:
- kf5/attica.bst
- kf5/kglobalaccel.bst
- kf5/kiconthemes.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5XmlGui.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kxmlgui.git
  track: v5.67.0
  ref: b371b98036200f24e5315d5bac4dc4bb4972f667
