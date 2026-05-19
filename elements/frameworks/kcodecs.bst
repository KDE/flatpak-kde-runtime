kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcodecs.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g90bc6c5db860fa715fd4cf2f3b35fb49986fac39

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
