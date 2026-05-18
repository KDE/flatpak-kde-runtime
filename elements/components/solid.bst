kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/solid.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g450450e160d11a2c9cf70de534275ac82416f5da

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/udisks.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
