kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kidletime.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g9e25416cb93107723c694de66cea5ccd1a18d268

build-depends:
- qt/qttools.bst
- libraries/plasma-wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/wayland.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
