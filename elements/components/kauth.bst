kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kauth.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g6e613f445638f2a11ebafe2a4bf3f6ab4a04a3ac

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kcoreaddons.bst
- components/kwindowsystem.bst
- qt/qtbase.bst
- qt/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
