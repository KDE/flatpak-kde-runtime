kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtcharts.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-g9b4c661ab4c712d2c4d9e8e254c2458a169720f5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
