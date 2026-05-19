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
  ref: v6.11.1-0-g474c213e7702c748db9bb04260a272ad6768dd38

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- qt/qtshadertools.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- qt/qtquick3d.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
