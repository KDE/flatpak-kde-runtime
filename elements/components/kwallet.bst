kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kwallet.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g0bfbe6d3fecd1607c8ab13ed1f8218740589ac73

build-depends:
- components/kservice.bst
- components/kdoctools.bst
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gpgmepp.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libsecret.bst
- components/qca.bst
- components/kcolorscheme.bst
- components/kconfig.bst
- components/kcoreaddons.bst
- components/kcrash.bst
- components/kdbusaddons.bst
- components/ki18n.bst
- components/knotifications.bst
- components/kwidgetsaddons.bst
- components/kwindowsystem.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
