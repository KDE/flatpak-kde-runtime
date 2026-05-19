kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/sonnet.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g331e7290fa41e116ffa2e3afdf797fe9173aea39

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/hunspell.bst
- freedesktop-sdk.bst:components/aspell.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
