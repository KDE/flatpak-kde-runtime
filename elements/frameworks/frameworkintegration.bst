kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/frameworkintegration.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g2a2b152c1620f93528afd6ef92aab987c9a12d7b

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kcolorscheme.bst
- frameworks/kconfig.bst
- frameworks/ki18n.bst
- frameworks/kiconthemes.bst
- frameworks/knewstuff.bst
- frameworks/knotifications.bst
- frameworks/kwidgetsaddons.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
