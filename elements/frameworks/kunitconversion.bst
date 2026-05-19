kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kunitconversion.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g3d30c3a00260fe0fa70ce1d1889ff41657cc05f5

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/ki18n.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
