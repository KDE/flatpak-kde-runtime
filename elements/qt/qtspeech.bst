kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtspeech.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-gbad8290b995a8990e64605dd60dcf4a5b898e29e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- qt/qtmultimedia.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
