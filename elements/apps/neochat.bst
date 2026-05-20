kind: cmake

sources:
- kind: git_repo
  url: kde:network/neochat.git
  track: v*

build-depends:
- deps/corrosion.bst
- qt/qttools.bst
- frameworks/kdoctools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- deps/cmark.bst
- freedesktop-sdk.bst:components/icu.bst
- frameworks/kcolorscheme.bst
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/kcrash.bst
- frameworks/kdbusaddons.bst
- frameworks/ki18n.bst
- frameworks/kiconthemes.bst
- frameworks/kio.bst
- frameworks/kirigami.bst
- libraries/kirigami-addons.bst
- frameworks/kitemmodels.bst
- frameworks/knotifications.bst
- frameworks/kquickcharts.bst
- libraries/kquickimageeditor.bst
- frameworks/kservice.bst
- libraries/kunifiedpush.bst
- frameworks/kwindowsystem.bst
- deps/libquotient.bst
- frameworks/prison.bst
- frameworks/purpose.bst
- deps/qcoro.bst
- frameworks/qqc2-desktop-style.bst
- deps/qtkeychain.bst
- frameworks/sonnet.bst
- frameworks/syntax-highlighting.bst
- qt/qtlocation.bst
- qt/qtmultimedia.bst
- qt/qtpositioning.bst
#- qt/qtwebview.bst
- qt/qtspeech.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
