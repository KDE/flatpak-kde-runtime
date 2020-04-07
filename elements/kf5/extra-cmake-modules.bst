kind: cmake
description: Extra Cmake Modules

depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

build-depends:
- qt5/qtdeclarative.bst
- qt5/qttools.bst


variables:
  cmake-local: |
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{datadir}/ECM/*/*.cmake'

sources:
- kind: git
  url: git://anongit.kde.org/extra-cmake-modules.git
  track: v5.67.0
  ref: 45c6a86eeff074d1793066a9cbb848012642f668
