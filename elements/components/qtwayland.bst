kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtwayland.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-gfc88dcfed73c0578d3bb562d9ff65c3aeff54c40

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- components/qtsvg.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst