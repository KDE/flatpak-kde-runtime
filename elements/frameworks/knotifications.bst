kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/knotifications.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g9c3cb2911c88006f844780efda67f5507128491d

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/libcanberra.bst
- frameworks/kconfig.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
