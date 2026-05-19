kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcrash.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g411aa2ed63a881d5ade82331fbf90f301f3386ce

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcoreaddons.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
