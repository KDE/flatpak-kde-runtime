kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kpty.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g7f75428f9ba1879633d652aa4b165162adc4c5cf

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kcoreaddons.bst
- components/ki18n.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
