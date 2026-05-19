kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtquickeffectmaker.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-gc8bb84c6eae46674efbdff5e3c34dfe109c20009

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- qt/qtquick3d.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
