kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kdeclarative.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g23ab14a1e34671956172361ae68fd9d92df90e5f

build-depends:
- qt/qttools.bst
- qt/qtshadertools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kglobalaccel.bst
- frameworks/kguiaddons.bst
- frameworks/ki18n.bst
- frameworks/kwidgetsaddons.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
