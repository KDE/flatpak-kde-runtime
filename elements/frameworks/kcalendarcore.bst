kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcalendarcore.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g9143b9e64c787b8f22430c11bab9c1b29dd2019b

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/libical.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
