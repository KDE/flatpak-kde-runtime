kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kwindowsystem.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gd701fedb310eacfd17a81e0813580750e0042b93

build-depends:
- qt/qttools.bst
- libraries/plasma-wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
