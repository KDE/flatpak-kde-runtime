kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kcompletion.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g3bcc8d95c960c71cea26737088b4aae8332547f6

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kcodecs.bst
- frameworks/kwidgetsaddons.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
