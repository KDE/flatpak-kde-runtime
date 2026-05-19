kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kwallet.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g5c19119682c3f88f5fc31c33648c5e3bd2228f5b

build-depends:
- frameworks/kservice.bst
- frameworks/kdoctools.bst
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gpgmepp.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libsecret.bst
- libraries/qca.bst
- frameworks/kcolorscheme.bst
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/kcrash.bst
- frameworks/kdbusaddons.bst
- frameworks/ki18n.bst
- frameworks/knotifications.bst
- frameworks/kwidgetsaddons.bst
- frameworks/kwindowsystem.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
