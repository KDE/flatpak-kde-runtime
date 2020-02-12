kind: cmake
kind: cmake
description: KSyntaxHighlighting

depends:
- qt5/qtbase.bst
- kf5/ksyntaxhighlighting.bst

sources:
- kind: git
  url: git://anongit.kde.org/syntax-highlighting
  track: v5.51.0
