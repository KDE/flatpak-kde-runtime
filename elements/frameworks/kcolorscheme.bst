kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcolorscheme.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gdf727793a1673f04f69d51dbbaff0c7915d3896c

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kguiaddons.bst
- frameworks/ki18n.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
