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
  ref: v6.11.1-0-gc80d6aa0d09e937ffd1380148f73918d4f9a92b6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtwebsockets.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
