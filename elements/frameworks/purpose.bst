kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/purpose.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gba506654f94733b34e349236e4600592e182aafb

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/prison.bst
- frameworks/kdeclarative.bst
- frameworks/kcmutils.bst
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- frameworks/kio.bst
- frameworks/kirigami.bst
- frameworks/kitemmodels.bst
- frameworks/knotifications.bst
- frameworks/kservice.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
