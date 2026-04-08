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
  ref: v6.11.0-0-g1007e149184402b24e06842febbc3e7da83cd64f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- components/qtdeclarative.bst

depends:
- components/qtbase.bst
- components/qtserialport.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
