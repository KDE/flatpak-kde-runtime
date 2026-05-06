kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kwindowsystem.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gf2eb4c1c416bd9eadeaa390d5742aa70908620ac

build-depends:
- components/qttools.bst
- components/plasma-wayland-protocols.bst
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
