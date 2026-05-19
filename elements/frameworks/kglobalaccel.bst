kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kglobalaccel.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g3ee8470c3ac2e060f53fe4c6d7d14fa7ab0304e0

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
