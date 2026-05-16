kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kparts.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g13f63754d8b3fd6e319ce03fd18c62613866c964

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kconfig.bst
- components/kcoreaddons.bst
- components/ki18n.bst
- components/kio.bst
- components/kwidgetsaddons.bst
- components/kxmlgui.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
