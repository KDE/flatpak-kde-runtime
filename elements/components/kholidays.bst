kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kholidays.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g91d1e981338681f861d0171e98b00006bf259b2c

build-depends:
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
