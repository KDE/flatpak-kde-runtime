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

sources:
- kind: git
  url: git://anongit.kde.org/kxmlgui.git
  track: v5.66.0
  ref: e93021b98a16c032fbbb8f0101327991b9e83dac
