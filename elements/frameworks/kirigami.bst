kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kirigami.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gdada4e888b216b297e5c65e44f7a18a95183cbbc

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
