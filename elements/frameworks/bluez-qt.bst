kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/bluez-qt.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g42c6c45f2018716d45e4d189854b5d7cd884eb7e

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
