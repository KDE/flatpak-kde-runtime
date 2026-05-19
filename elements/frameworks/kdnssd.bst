kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kdnssd.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g2791d651ccd010cb172c1b3e6635f31cd19c8003

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
