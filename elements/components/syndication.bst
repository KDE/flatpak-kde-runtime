kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/syndication.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g7e7351ac24c38a2e2c1bdfd29eb5bc0771795db3

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kcodecs.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
