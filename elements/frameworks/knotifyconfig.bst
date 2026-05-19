kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/knotifyconfig.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g3e15f6ffb17232d85d05198e13443325462c7755

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/ki18n.bst
- frameworks/kio.bst
- frameworks/libcanberra.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
