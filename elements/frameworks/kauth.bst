kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kauth.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-ge29d60d4f37872b1c73c36dd0a86c250f8150805

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcoreaddons.bst
- frameworks/kwindowsystem.bst
- qt/qtbase.bst
- qt/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
