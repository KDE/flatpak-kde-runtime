kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kconfig.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g320c75b97892aeef45b947f78f46a461fe42a38d

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
