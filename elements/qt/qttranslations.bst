kind: cmake

sources:
- kind: git_repo
  url: qt_git:qttranslations.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g79c1b1aad54292fcc595b49f90c9ecd8f43bfa90

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
