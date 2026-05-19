kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/ktexttemplate.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g7eabf503d7a206d672425c49e84a0f92c3ed31d6

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
