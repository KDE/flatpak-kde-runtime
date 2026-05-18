kind: cmake

sources:
- kind: git_repo
  url: qt_git:qttools.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.0-0-g541b0c2127aa3496eb9870389c9a278e157e9b07

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- qt/qtdeclarative.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/zstd.bst
- qt/qtbase.bst

variables:
  cmake-local: >-
    -DQT_INSTALL_XDG_DESKTOP_ENTRIES=ON
    -DQT_FEATURE_assistant=OFF