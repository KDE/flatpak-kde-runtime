kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kiconthemes.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g25e736a07c57dfec32e04435e4409976acc06203

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/breeze-icons.bst
- components/karchive.bst
- components/kcolorscheme.bst
- components/kwidgetsaddons.bst
- components/qtsvg.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
