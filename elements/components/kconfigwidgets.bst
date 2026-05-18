kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kconfigwidgets.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gf2f27716479d8a9f45bb28edd61f05c32f699b03

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kcolorscheme.bst
- components/kcodecs.bst
- components/kcoreaddons.bst
- components/kwidgetsaddons.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
