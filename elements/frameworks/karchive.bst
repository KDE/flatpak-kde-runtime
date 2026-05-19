kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/karchive.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g5df32e195a5bea8cf3cae3f28cf7bf55a2413be6

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/bzip2.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
