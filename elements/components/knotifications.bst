kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/knotifications.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gba44a35b3584efa2540a95b802e72d8e536bd876

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/libcanberra.bst
- components/kconfig.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
