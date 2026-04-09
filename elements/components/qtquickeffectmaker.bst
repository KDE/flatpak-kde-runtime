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
  ref: v6.11.0-0-gd07cefb9899d1f4088d4b9a2acf83e0335bd4e55

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/qtbase.bst
- components/qtdeclarative.bst
- components/qtquick3d.bst
- freedesktop-sdk.bst:components/zlib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
