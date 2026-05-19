kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtlocation.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g25f12216c53d62c0338dace313c484dd24ee918a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- qt/qtpositioning.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
