kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/threadweaver.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gfd547264b6986b114cdd303352c3d946f78bc5ed

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
