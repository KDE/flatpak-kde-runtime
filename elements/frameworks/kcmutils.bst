kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcmutils.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g1ffa3b5e5f9de44bb49c8c6a17664c43ee46431d

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
