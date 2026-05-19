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
  ref: v6.11.1-0-g7ffdb09bad559503a2f08f4197dc6b9ee8ebb469

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
