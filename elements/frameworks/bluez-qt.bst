kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/bluez-qt.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gce5021ced9c3e4db83d743774b6c9a205e2d899a

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/bluez.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
