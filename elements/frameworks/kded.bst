kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kded.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g0a508287490b6e6f3062e2624678463090de202f

build-depends:
- frameworks/kdoctools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/kcrash.bst
- frameworks/kdbusaddons.bst
- frameworks/kservice.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
