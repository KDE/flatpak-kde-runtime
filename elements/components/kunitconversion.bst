kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kpackage.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g276a33f64bea6240edbf1ea89cddc0af2c5c4773

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/ki18n.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
