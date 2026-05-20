kind: cmake

sources:
- kind: git_repo
  url: kde:libraries/kquickimageeditor.git
  track: v0.*
  ref: v0.6.1-0-gdc18bdf112c2959d515608fb524207b7d2728c34

build-depends:
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kirigami.bst
- deps/opencv.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_WITH_QT6=ON
