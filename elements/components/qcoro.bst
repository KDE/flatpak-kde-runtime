kind: cmake

sources:
- kind: git_repo
  url: github:danvratil/qcoro.git
  track: v0.*
  ref: v0.13.0-0-g98f23d8d8d67e9e24217d268927faec97c713fb0

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtwebsockets.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_SHARED_LIBS=ON
