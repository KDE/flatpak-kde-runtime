kind: cmake
description: SyntaxHighlighting

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst
- qt5/qtxmlpatterns.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5SyntaxHighlighting.so'

sources:
- kind: git
  url: git://anongit.kde.org/syntax-highlighting.git
  track: v5.67.0
  ref: 1671c931ccf309af8f91255e793773ec59eed172
