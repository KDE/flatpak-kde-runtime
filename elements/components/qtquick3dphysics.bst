kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtquick3dphysics.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-ga5861cdf1fab3a577157edfddc61ccbf3352b5f4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- components/qtquick3d.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
