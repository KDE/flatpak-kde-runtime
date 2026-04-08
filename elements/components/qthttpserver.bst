kind: cmake

sources:
- kind: git_repo
  url: qt_git:qthttpserver.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-g89db72a6f6e8173a977865d1c7e089ede96ac243

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtwebsockets.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
