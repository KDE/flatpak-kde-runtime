kind: cmake

sources:
- kind: git_repo
  url: kde:plasma/plasma-activities.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.6.90-0-g14da8f49e137c7942a30ada57c8bd87678fb71c8

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DPLASMA_ACTIVITIES_LIBRARY_ONLY=ON
