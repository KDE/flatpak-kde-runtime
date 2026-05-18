kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/syntax-highlighting.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gbbea2326fbd4fc720518efc43f1b018f8a7d0670

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
