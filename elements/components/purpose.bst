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
- components/prison.bst
- components/kdeclarative.bst
- components/kcmutils.bst
- components/kconfig.bst
- components/kcoreaddons.bst
- components/ki18n.bst
- components/kio.bst
- components/kirigami.bst
- components/kitemmodels.bst
- components/knotifications.bst
- components/kservice.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
