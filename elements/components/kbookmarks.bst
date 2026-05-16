kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kbookmarks.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gc05c9b9e71cf291b1279d4ad161376a6aaebd9da

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kconfig.bst
- components/kcoreaddons.bst
- components/kwidgetsaddons.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
