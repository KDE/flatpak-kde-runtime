kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcoreaddons.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g799c32965cc502ca72815b23e2642f5ba277736d

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
