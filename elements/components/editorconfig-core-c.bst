kind: cmake

sources:
- kind: git_repo
  url: github:editorconfig/editorconfig-core-c.git
  track: v0.*
  ref: v0.12.11-0-g0ba157eff167c1b2d1bc0c3e13975b7a73fb9d25

build-depends:
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap/pcre2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_DOCUMENTATION=OFF
