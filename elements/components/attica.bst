kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/attica.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g3890987717cc6715ed88189a341d827ec7a0b046

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
