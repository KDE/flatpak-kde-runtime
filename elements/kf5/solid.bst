kind: cmake
description: Solid

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/solid.git
  track: v5.66.0
  ref: 6fd90c321632ad5ca4873a3cbfa2d13b0fb7a8d2
