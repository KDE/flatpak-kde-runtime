kind: cmake

sources:
- kind: git_repo
  url: kde:libraries/kirigami-addons.git
  track: v1.*
  ref: v1.12.1-0-g6c80f4dfede60601e6fd1c3087143ed37ff4d757

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
