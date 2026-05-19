kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kservice.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g866b5c5ca291024223ee11bafda6183c92f4ccfb

build-depends:
- qt/qttools.bst
- frameworks/kdoctools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcoreaddons.bst
- frameworks/kconfig.bst
- frameworks/ki18n.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
