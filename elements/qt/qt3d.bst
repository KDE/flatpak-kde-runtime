kind: cmake

sources:
- kind: git_repo
  url: qt_git:qt3d.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g1f4c3a7548201bcad21a273a49060c96ad9ff3a9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- qt/qtshadertools.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DQT_FEATURE_qt3d_assimp=OFF
