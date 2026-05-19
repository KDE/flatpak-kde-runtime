kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kconfigwidgets.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g0307ea844f9933a9a29cb8e34e777b3ae24a07ae

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcolorscheme.bst
- frameworks/kcodecs.bst
- frameworks/kcoreaddons.bst
- frameworks/kwidgetsaddons.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
