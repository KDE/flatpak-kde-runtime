kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kparts.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g13f63754d8b3fd6e319ce03fd18c62613866c964

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- frameworks/kio.bst
- frameworks/kwidgetsaddons.bst
- frameworks/kxmlgui.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
