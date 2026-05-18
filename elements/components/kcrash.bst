kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcrash.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g0c184f97e8d1d01651f23d5747498a5ef07e8538

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kcoreaddons.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
