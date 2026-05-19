kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/prison.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g5f8346bd9dd244a6dc2541cf906d129be4dbc2c5

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/libqrencode.bst
- deps/libdmtx.bst
- deps/zxing-cpp.bst
- qt/qtmultimedia.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
