kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/breeze-icons.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g3264ddc07cea5d6a0029196b9fd404bdc1a2003f

build-depends:
- freedesktop-sdk.bst:components/python3-lxml.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DWITH_ICON_GENERATION=OFF
