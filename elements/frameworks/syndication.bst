kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/syndication.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gd945b4198a551d99a088b1ed28a86a5d219ac1b1

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcodecs.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
