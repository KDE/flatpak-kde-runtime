kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/knewstuff.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g3b47aebf3df8e60324921f994bee10f7ff891560

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/attica.bst
- frameworks/karchive.bst
- frameworks/kcmutils.bst
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- frameworks/kirigami.bst
- frameworks/kpackage.bst
- frameworks/kwidgetsaddons.bst
- frameworks/syndication.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
