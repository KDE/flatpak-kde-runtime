kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtconnectivity.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-g102a73c48c97b503d33add4a95b0cdf8d1363740

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst
- freedesktop-sdk.bst:components/bluez-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst