kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtremoteobjects.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-ge5acd828cb0c8dfe833d66ffb952de088213b6c6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
