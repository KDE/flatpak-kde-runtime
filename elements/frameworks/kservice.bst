kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kservice.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-ge422dcdb85b369c04fac849f58e15d788d403eb4

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
