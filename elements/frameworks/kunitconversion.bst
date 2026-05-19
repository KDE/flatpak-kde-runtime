kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kunitconversion.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gaf234f2d82cf6b246d092ca3bd76d6bcad47aa27

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
