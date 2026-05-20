kind: cmake

sources:
- kind: git_repo
  url: kde:libraries/kunifiedpush.git
  track: v*
  exclude:
  - '*rc*'
  ref: v26.04.1-0-gbe3ef9b8788ef375439d10f0286486d922c94048

build-depends:
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/openssl.bst
- frameworks/kcmutils.bst
- frameworks/kcoreaddons.bst
- frameworks/kcrash.bst
- frameworks/ki18n.bst
- frameworks/kservice.bst
- frameworks/solid.bst
- qt/qtbase.bst
- qt/qtdeclarative.bst
- qt/qtwebsockets.bst
