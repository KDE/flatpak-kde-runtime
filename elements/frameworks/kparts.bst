kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kparts.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-ga534217afb47501a3e5918cccd66bab12e1f84c5

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- frameworks/kio.bst
- frameworks/kwidgetsaddons.bst
- frameworks/kxmlgui.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
