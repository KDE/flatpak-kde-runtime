kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kconfig.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g2e23370d0475d7f6ea17160fa1c622a9c77fe9f5

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
