kind: cmake

sources:
- kind: git_repo
  url: kde:plasma/qqc2-breeze-style.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.6.90-0-g3a978c4673d6eac68a4e03855cd3f5041661e98e

build-depends:
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcolorscheme.bst
- frameworks/kconfig.bst
- frameworks/kguiaddons.bst
- frameworks/kiconthemes.bst
- frameworks/kirigami.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
