kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kplotting.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g90bb9c5d4baabab86851a46d3f6e5eaba4c22e31

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
