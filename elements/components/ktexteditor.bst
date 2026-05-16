kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/ktexteditor.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-ge2ca32f39189090bb22cdc6006bb9847f64f88ac

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/karchive.bst
- components/kauth.bst
- components/kcodecs.bst
- components/kcolorscheme.bst
- components/kcompletion.bst
- components/kconfig.bst
- components/kconfigwidgets.bst
- components/kcoreaddons.bst
- components/kguiaddons.bst
- components/ki18n.bst
- components/kio.bst
- components/kitemviews.bst
- components/kparts.bst
- components/kwidgetsaddons.bst
- components/kxmlgui.bst
- components/sonnet.bst
- components/syntax-highlighting.bst
- components/editorconfig-core-c.bst
- components/qtdeclarative.bst
- components/qtspeech.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
