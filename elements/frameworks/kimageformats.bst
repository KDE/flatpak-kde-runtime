kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kimageformats.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gae279c55f4d00074a107428d40694004050ef77b

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/libavif.bst
- freedesktop-sdk.bst:components/libheif.bst
- freedesktop-sdk.bst:components/libjxl.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- frameworks/karchive.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
