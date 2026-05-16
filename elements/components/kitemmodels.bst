kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kitemmodels.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g3b11176e5da167bbff27f7b424c4540bf11ce80e

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
