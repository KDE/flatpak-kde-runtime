kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/ktextwidgets.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-ga8ff3ba338242917170063fa8240645062b9ad66

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kcompletion.bst
- components/kconfig.bst
- components/ki18n.bst
- components/kwidgetsaddons.bst
- components/sonnet.bst
- components/qtspeech.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
