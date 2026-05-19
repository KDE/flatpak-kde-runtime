kind: cmake

sources:
- kind: git_repo
  url: kde:libraries/kirigami-addons.git
  track: v1.*
  ref: v1.12.0-0-gd544a188ac2cac376a3595e3d440586c69a458d9

build-depends:
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcolorscheme.bst
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/kcrash.bst
- frameworks/kglobalaccel.bst
- frameworks/kguiaddons.bst
- frameworks/ki18n.bst
- frameworks/kiconthemes.bst
- frameworks/kirigami.bst
- frameworks/kitemmodels.bst
- frameworks/ksvg.bst
- frameworks/sonnet.bst
- qt/qtmultimedia.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
