kind: cmake

sources:
- kind: git_repo
  url: qt_git:qtmultimedia.git
  track: v6.*.*
  exclude:
  - "*-beta*"
  - "*-rc*"
  - "*-alpha*"
  - "*-lts*"
  ref: v6.11.1-0-g1cdfe8d416a173a85051e0028dd94d24311022e2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/xorg-lib-xrandr.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:components/ffmpeg.bst

depends:
- qt/qtbase.bst
- qt/qtdeclarative.bst
- qt/qtquick3d.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
