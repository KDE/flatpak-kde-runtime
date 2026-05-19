kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtspeech.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g52081e9d3ce3968f5b6335a5cc5c80620279b031

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- qt/qtmultimedia.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
