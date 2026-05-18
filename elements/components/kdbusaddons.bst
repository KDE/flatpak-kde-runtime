kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kdbusaddons.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gbed977d55f2f7f2f69930393aa2488ca0a04e402

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
