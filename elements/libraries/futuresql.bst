kind: cmake

sources:
- kind: git_repo
  url: kde:libraries/futuresql.git
  track: v0.1.*
  ref: v0.1.1-0-g00f2cf84543d2057d81fc549d837297fa7f7f9a9

build-depends:
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- deps/qcoro.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_WITH_QT6=ON
