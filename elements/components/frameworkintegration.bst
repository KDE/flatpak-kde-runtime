kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/frameworkintegration.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g2a2b152c1620f93528afd6ef92aab987c9a12d7b

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kcolorscheme.bst
- components/kconfig.bst
- components/ki18n.bst
- components/kiconthemes.bst
- components/knewstuff.bst
- components/knotifications.bst
- components/kwidgetsaddons.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
