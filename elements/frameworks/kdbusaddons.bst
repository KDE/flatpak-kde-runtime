kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kdbusaddons.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g076bb542e5dbe36c26aaaf6b57c88574ef5bfe3d

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
