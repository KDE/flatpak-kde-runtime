kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kbookmarks.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g93a31eb7c67ed8ba70b00a5263b77283a2c2202e

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/kwidgetsaddons.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
