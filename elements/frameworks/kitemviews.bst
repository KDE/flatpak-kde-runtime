kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kitemviews.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-ge423e89d213c5cc0a4ab1eb910f2f2d923f2adb2

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
