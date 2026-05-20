kind: cmake

sources:
- kind: git_repo
  url: github:opencv/opencv.git
  track: 4.*
  exclude:
  - '*-*'
  ref: 4.13.0-0-gfe38fc608f6acb8b68953438a62305d8318f4fcd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/abseil-cpp.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- freedesktop-sdk.bst:components/libglvnd.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libjxl.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/libwebp.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/protobuf.bst
- freedesktop-sdk.bst:components/zlib.bst
#- freedesktop-sdk.bst:components/opencl.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:components/fmtlib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
    -DWITH_GTK=OFF
    -DBUILD_LIST=core,imgproc
