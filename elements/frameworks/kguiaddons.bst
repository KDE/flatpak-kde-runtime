kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kguiaddons.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g1bb36eacb6213dfd77fe61d32f8287a6a952790a

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- libraries/plasma-wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
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
