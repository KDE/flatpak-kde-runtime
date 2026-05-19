kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtwayland.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g23b98e2c05f411365860c3607d611d1dd83bff47

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- qt/qtsvg.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
