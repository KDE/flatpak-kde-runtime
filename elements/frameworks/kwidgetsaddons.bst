kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kwidgetsaddons.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g372bd8fa11769909d5edfd2797ff8059aedf06ab

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
