kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kglobalaccel.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g76a6ac23ec8ccb06e10645d1bbc810b64cda6f94

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
