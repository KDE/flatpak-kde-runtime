kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/purpose.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g2976526a14272a45409d7562465f00f58a215d89

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
