kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/qqc2-desktop-style.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-ga63714aa1b59d8c1b0639bab3da5063eabcfcaf8

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcolorscheme.bst
- frameworks/kconfig.bst
- frameworks/kiconthemes.bst
- frameworks/kirigami.bst
- frameworks/ki18n.bst
- frameworks/sonnet.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
