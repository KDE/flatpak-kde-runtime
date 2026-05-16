kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kdeclarative.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gff7a6433ca9ec0f441b1bee507d8be96217b0732

build-depends:
- components/qttools.bst
- components/qtshadertools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kconfig.bst
- components/kglobalaccel.bst
- components/kguiaddons.bst
- components/ki18n.bst
- components/kwidgetsaddons.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
