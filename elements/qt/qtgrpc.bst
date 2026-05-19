kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtgrpc.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g246eb3e3f33bde5ae90bcc8fc1ee54b9381fc60a
- kind: patch
  path: patch/qtgrpc-find_program-paths.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/grpc.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- freedesktop-sdk.bst:components/abseil-cpp.bst
- freedesktop-sdk.bst:components/protobuf.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
