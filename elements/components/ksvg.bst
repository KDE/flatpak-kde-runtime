kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/ksvg.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gd745dac87f2dd89bf5aaa55397d04188eb4d2cff

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/karchive.bst
- components/kcolorscheme.bst
- components/kconfig.bst
- components/kcoreaddons.bst
- components/kguiaddons.bst
- components/kirigami.bst
- qt/qtsvg.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
