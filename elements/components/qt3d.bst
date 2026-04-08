kind: cmake

sources:
- kind: git_repo
  url: qt_git:qt3d.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-g31dbc46cecb6c96fde5efd43cb70812c0d84b328

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- components/qtshadertools.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
