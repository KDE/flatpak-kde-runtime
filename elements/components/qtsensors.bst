kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtsensors.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-g92ed021507d4f8c38e0e9548db97c8dd039829d9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst