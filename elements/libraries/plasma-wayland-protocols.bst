kind: cmake

sources:
- kind: git_repo
  url: kde:libraries/plasma-wayland-protocols.git
  track: v1.*
  ref: v1.21.0-0-g4c015e90ae6c88f2ffa766e899387ef431eade49

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- qt/qtbase.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
