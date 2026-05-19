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
  ref: v6.11.1-0-g933e87d8a0ceda506d384b097276336faf995e9f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtbase.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst
- freedesktop-sdk.bst:components/bluez-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
