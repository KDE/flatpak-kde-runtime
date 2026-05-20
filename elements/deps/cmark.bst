kind: cmake

sources:
- kind: git_repo
  url: github:commonmark/cmark.git
  track: 0.*
  ref: 0.31.2-0-geec0eeba6d31189fd828314576494566d539b1e3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
