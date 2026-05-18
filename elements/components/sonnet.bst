kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/sonnet.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gc9098d77e31e4af6eee7cda7f47b9b25c231e65d

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
