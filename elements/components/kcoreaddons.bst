kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcoreaddons.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g50d360736c399502fedf203e95482b0d0e5a3ea2

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
