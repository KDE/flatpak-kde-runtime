kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/ki18n.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gbe6d61539b251ae8f70b64a6528098426dba2af6

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
