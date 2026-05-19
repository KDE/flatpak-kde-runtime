kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kquickcharts.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g339e5f19dfbfe89cf69b5ea85f162a657eec7468

build-depends:
- qt/qttools.bst
- qt/qtshadertools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kirigami.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
