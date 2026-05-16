kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcontacts.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g09be7c24dffd4679be1c4964eebf95517e4234b9

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kcodecs.bst
- components/kconfig.bst
- components/kcoreaddons.bst
- components/ki18n.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
