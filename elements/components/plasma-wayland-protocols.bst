kind: cmake

sources:
- kind: git_repo
  url: kde:libraries/plasma-wayland-protocols.git
  track: v1.*
  ref: v1.20.0-0-g6fee13b7c0b25d4619e20090f4a178fc2b460be7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- components/qtbase.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
