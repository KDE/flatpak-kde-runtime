kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/knotifyconfig.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-gcbb004cb46b01969c7b4c0b24a0a15a868a5a86a

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kconfig.bst
- components/ki18n.bst
- components/kio.bst
- components/libcanberra.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
