kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kirigami.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gbc6a9c6c099159d9053b055d51b726919e984770

build-depends:
- qt/qttools.bst
- qt/qtshadertools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtsvg.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
