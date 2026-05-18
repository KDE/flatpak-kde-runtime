kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/qqc2-desktop-style.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g901257d1153ab643643949a6d3824097f9edb9c9

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kcolorscheme.bst
- components/kconfig.bst
- components/kiconthemes.bst
- components/kirigami.bst
- components/ki18n.bst
- components/sonnet.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
