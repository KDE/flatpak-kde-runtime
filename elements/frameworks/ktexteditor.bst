kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/ktexteditor.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-ge2ca32f39189090bb22cdc6006bb9847f64f88ac

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/karchive.bst
- frameworks/kauth.bst
- frameworks/kcodecs.bst
- frameworks/kcolorscheme.bst
- frameworks/kcompletion.bst
- frameworks/kconfig.bst
- frameworks/kconfigwidgets.bst
- frameworks/kcoreaddons.bst
- frameworks/kguiaddons.bst
- frameworks/ki18n.bst
- frameworks/kio.bst
- frameworks/kitemviews.bst
- frameworks/kparts.bst
- frameworks/kwidgetsaddons.bst
- frameworks/kxmlgui.bst
- frameworks/sonnet.bst
- frameworks/syntax-highlighting.bst
- deps/editorconfig-core-c.bst
- qt/qtdeclarative.bst
- qt/qtspeech.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
