kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtsvg.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g2596f43da2dc72d2afecc084355b0f5f87922a6c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- qt/qtbase.bst
