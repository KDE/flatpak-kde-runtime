kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtgraphs.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-gb117ffd7227d0419a3389fc5cfe70f9c7e8de30f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qtshadertools.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- components/qtquick3d.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst