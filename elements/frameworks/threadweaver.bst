kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/threadweaver.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gd260930ca0da5f32ff68c93766229474e1144902

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
