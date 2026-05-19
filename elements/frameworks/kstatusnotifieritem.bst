kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kstatusnotifieritem.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-gfb56832ebcff866cd817728e86a2f831745ac9f3

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kwindowsystem.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
