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
  track: v5.66.0
  ref: c1f4213eaf81cf8c50ef89c27a5156b2f6bf3caa
