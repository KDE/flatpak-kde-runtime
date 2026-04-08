kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtlocation.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-g23d209b7498f181d68b3b1cae6063bb446c5c8d2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- components/qtpositioning.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
