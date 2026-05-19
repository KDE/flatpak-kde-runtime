kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/ktextwidgets.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g2d8f56b0749328924d56a953f8c7717f14bb264a

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcompletion.bst
- frameworks/kconfig.bst
- frameworks/ki18n.bst
- frameworks/kwidgetsaddons.bst
- frameworks/sonnet.bst
- qt/qtspeech.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
