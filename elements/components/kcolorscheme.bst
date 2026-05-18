kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcolorscheme.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g104d1fb5cba5a515ecd97bbefead349ff436c33d

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kconfig.bst
- components/kguiaddons.bst
- components/ki18n.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
