kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kpackage.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g3f0f9d09c22154c741198add3ca04b487c761e8b

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/karchive.bst
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
