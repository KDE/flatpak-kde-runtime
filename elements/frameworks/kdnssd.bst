kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kdnssd.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gc35cedb33d03c3073212b5ddb1dacd13a97d6c4c

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
