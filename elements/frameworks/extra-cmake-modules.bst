kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/extra-cmake-modules.git
  track: v*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-ga1dac86d6c848473d840b748b82694ef6916a3ca

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/python3-requests.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
