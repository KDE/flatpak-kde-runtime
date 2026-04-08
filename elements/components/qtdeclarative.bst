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
  ref: v6.11.0-0-ge602a097ca314e9610b1fd3b7dbfa467a868731a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qtlanguageserver.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zlib.bst
- components/qtbase.bst
- components/qtshadertools.bst
- components/qtsvg.bst

variables:
  cmake-local: >-
    -DCMAKE_CXX_FLAGS="${CXXFLAGS} -ffat-lto-objects"
    -DQT_TOOL_COMMAND_WRAPPER_PATH=env