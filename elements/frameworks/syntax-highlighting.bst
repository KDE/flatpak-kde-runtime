kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/syntax-highlighting.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g8a8789ca55c1209109f97a34b18e633c4240bee0

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
