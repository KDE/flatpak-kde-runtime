kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtscxml.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-g66f5602d9cc967b0fbadbd4293d3ecb45331f7eb

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
