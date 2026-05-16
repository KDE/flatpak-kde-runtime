kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcalendarcore.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g3d0bc37952b68964dd01e13e6b04910dd68c1db0

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/libical.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
