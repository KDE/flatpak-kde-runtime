kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kquickcharts.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g5c8d498a4a6da2429f86baa504b3ce000c05e7e5

build-depends:
- qt/qttools.bst
- qt/qtshadertools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kirigami.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
