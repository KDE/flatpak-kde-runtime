kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kio.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gc347b3cbc49480ba8977b75f1240d40b84a53c82

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:bootstrap/acl.bst
- frameworks/kdoctools.bst
- frameworks/solid.bst
- frameworks/kded.bst
- frameworks/karchive.bst
- frameworks/kbookmarks.bst
- frameworks/kcolorscheme.bst
- frameworks/kcompletion.bst
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/kcrash.bst
- frameworks/kdbusaddons.bst
- frameworks/kguiaddons.bst
- frameworks/ki18n.bst
- frameworks/kiconthemes.bst
- frameworks/kitemviews.bst
- frameworks/kjobwidgets.bst
- frameworks/kservice.bst
- frameworks/kwallet.bst
- frameworks/kwidgetsaddons.bst
- frameworks/kwindowsystem.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
