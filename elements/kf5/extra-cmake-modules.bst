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
  track: v5.66.0
  ref: de934e322e6b8483058031736813682296b398de
