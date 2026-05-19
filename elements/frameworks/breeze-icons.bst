kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/breeze-icons.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g872cc3cc073f857e2160105216488585e340d314

build-depends:
- freedesktop-sdk.bst:components/python3-lxml.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DWITH_ICON_GENERATION=OFF
