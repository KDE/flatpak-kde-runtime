kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kitemmodels.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g1a580ef218d8b71f7432c591880371b0b197680a

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
