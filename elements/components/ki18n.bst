kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/ki18n.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g1a76f84a55eaee5de5539e61226050828dfeb638

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
