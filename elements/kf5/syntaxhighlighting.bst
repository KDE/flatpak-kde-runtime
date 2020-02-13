kind: cmake
description: SyntaxHighlighting

depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst
- qt5/qtxmlpatterns.bst

sources:
- kind: git
  url: git://anongit.kde.org/syntax-highlighting.git
  track: v5.66.0
  ref: 3d0781d2b5f96fc4f0ec9cc3c189b84693bf4292
