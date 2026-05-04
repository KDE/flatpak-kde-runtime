kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/ktexttemplate.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g2d54b9e0668bd4a6be33ae8ff1c2a5a5c25eb0f3

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
