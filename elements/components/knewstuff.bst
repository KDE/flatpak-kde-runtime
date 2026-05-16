kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/knewstuff.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gd0200e0df0c629f8e2c004db585dacb7fa8d2795

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/attica.bst
- components/karchive.bst
- components/kcmutils.bst
- components/kconfig.bst
- components/kcoreaddons.bst
- components/ki18n.bst
- components/kirigami.bst
- components/kpackage.bst
- components/kwidgetsaddons.bst
- components/syndication.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
