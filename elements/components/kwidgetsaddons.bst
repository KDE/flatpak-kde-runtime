kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kwidgetsaddons.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g612f517153975f35bdc59fe4a41b054a21517314

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF