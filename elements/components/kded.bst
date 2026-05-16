kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kded.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g8a05a70304070cce9d335771791b2c12831a27db

build-depends:
- components/kdoctools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kconfig.bst
- components/kcoreaddons.bst
- components/kcrash.bst
- components/kdbusaddons.bst
- components/kservice.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
