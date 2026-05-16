kind: cmake

sources:
- kind: git_repo
  url: kde:plasma/ocean-sound-theme.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.6.90-0-g3a9403e3633030453fb9ed709ec8eb394c107504

build-depends:
- components/qttools.bst
- components/qtbase.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
