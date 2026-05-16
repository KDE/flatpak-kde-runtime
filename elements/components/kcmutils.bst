kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcmutils.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gffa3783aa59d34c82683c5ed85d79a43fe5c2952

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kconfig.bst
- components/kconfigwidgets.bst
- components/kcoreaddons.bst
- components/kguiaddons.bst
- components/ki18n.bst
- components/kio.bst
- components/kirigami.bst
- components/kitemviews.bst
- components/kservice.bst
- components/kwidgetsaddons.bst
- components/kxmlgui.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
