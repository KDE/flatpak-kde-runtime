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
- components/kcolorscheme.bst
- components/kconfig.bst
- components/kcoreaddons.bst
- components/kcrash.bst
- components/kglobalaccel.bst
- components/kguiaddons.bst
- components/ki18n.bst
- components/kiconthemes.bst
- components/kirigami.bst
- components/kitemmodels.bst
- components/ksvg.bst
- components/sonnet.bst
- components/qtmultimedia.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
