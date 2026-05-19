kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kiconthemes.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g668d7a3d3b088bbf1073ccfcbf7ca3e6b40ece32

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/breeze-icons.bst
- frameworks/karchive.bst
- frameworks/kcolorscheme.bst
- frameworks/kwidgetsaddons.bst
- qt/qtsvg.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
