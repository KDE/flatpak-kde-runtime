kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kstatusnotifieritem.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gc2eafdaf09310564ae89df7c242c4a4176673e0b

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kwindowsystem.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
