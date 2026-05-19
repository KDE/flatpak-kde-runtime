kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kfilemetadata.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gc7b0cf39fa5869a64a59dc7f845ceacc4fc1f3db

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/taglib.bst
- frameworks/karchive.bst
- frameworks/kcodecs.bst
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
