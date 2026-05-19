kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kdav.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gdc9a477fd6425f0291c97cddc36a21ae5ca660a3

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/karchive.bst
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- frameworks/kio.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
