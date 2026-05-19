kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kholidays.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gb0f6aaeccbaf9e49aa586463cbf1ecfb88a6b6c9

build-depends:
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bison.bst
- qt/qttools.bst
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
