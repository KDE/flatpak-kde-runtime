kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kpty.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-ga88ed97bede73ed6dd7239a29d6f9a23b5f1fd9d

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
