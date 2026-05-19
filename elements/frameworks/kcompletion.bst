kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcompletion.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g9872ad57ef9c857d2badd39818d50a695c82f04c

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kcodecs.bst
- frameworks/kwidgetsaddons.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
