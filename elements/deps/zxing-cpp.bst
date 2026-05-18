kind: cmake

sources:
- kind: git_repo
  url: github:zxing-cpp/zxing-cpp.git
  track: v3.*
  exclude:
  - '*rc*'
  ref: v3.0.2-0-g8dd1cf5c4fd6fb6211bb96713db926ac6f2cf825
- kind: patch
  path: patch/zxing-local-include-stb.patch
- kind: git_repo
  directory: zint
  url: github:zint/zint.git
  track: 2.*
  ref: 2.16.0-0-g55541e139e62b9209b71cd9b0ba9010cec28b1d9
- kind: git_repo
  directory: stb
  url: github:nothings/stb.git
  track: master
  ref: 31c1ad37456438565541f4919958214b6e762fb4

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/libpng.bst
- components/karchive.bst
- components/kcoreaddons.bst
- components/ki18n.bst
- qt/qtmultimedia.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_SHARED_LIBS=ON
    -DSTB_IMAGE_INCLUDE_DIR=%{build-root}/stb

  license-files-extra: stb/LICENSE