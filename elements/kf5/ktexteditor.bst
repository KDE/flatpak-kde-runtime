kind: cmake
description: KTextEditor

depends:
- kf5/kparts.bst
- kf5/syntaxhighlighting.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5TextEditor.so'

sources:
- kind: git
  url: git://anongit.kde.org/ktexteditor.git
  track: v5.67.0
  ref: 278d319f846315f14feaa56a28922c1e36d9e2e1
