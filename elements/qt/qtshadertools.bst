kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtshadertools.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-gb3b8537b3c5ab01919e30b87d48d2f1ba1f2a3fe

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- qt/qtbase.bst
