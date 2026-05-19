kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcmutils.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gffa3783aa59d34c82683c5ed85d79a43fe5c2952

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kconfigwidgets.bst
- frameworks/kcoreaddons.bst
- frameworks/kguiaddons.bst
- frameworks/ki18n.bst
- frameworks/kio.bst
- frameworks/kirigami.bst
- frameworks/kitemviews.bst
- frameworks/kservice.bst
- frameworks/kwidgetsaddons.bst
- frameworks/kxmlgui.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
