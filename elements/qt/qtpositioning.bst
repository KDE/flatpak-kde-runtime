kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtpositioning.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g7ea5b529ea34b7baaeea5edfe0a1a6410bd14536

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- qt/qtdeclarative.bst

depends:
- qt/qtbase.bst
- qt/qtserialport.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
