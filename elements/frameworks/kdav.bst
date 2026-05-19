kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kdav.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g30632fbec822b82ad6127df59b0d82b16c7a6523

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/karchive.bst
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- frameworks/kio.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
