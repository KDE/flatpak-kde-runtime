kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/attica.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gaef3c6951afb0c5a850957bcfdafdc129f442b5b

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
