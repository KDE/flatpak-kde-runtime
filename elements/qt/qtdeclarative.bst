kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtdeclarative.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-ga02bed441965ee1f18f856352c7d5ee5ba35d795

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- qt/qtlanguageserver.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- qt/qtbase.bst
- qt/qtshadertools.bst
- qt/qtsvg.bst

variables:
  cmake-local: >-
    -DCMAKE_CXX_FLAGS="${CXXFLAGS} -ffat-lto-objects"
    -DQT_TOOL_COMMAND_WRAPPER_PATH=env
